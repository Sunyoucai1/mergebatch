sap.ui.define([
    "sap/ui/core/mvc/ControllerExtension",
    "sap/m/MessageBox",
    "sap/m/MessageToast"
], function (ControllerExtension, MessageBox, MessageToast) {
    "use strict";

    return ControllerExtension.extend("zcpelbatchmerge.ext.controller.ObjectPageExt", {

        onMergeBatch: function () {
            const oView    = this.base.getView();
            const oModel   = oView.getModel();
            const oContext = oView.getBindingContext();

            if (!oContext) {
                MessageBox.error("No delivery context found.");
                return;
            }

            const sDeliveryDoc = oContext.getProperty("deliveryDocument");

            MessageBox.confirm(
                "Are you sure you want to merge batches for delivery " + sDeliveryDoc + "?",
                {
                    title:            "Merge Batch",
                    actions:          [MessageBox.Action.OK, MessageBox.Action.CANCEL],
                    emphasizedAction: MessageBox.Action.OK,
                    onClose: function (sAction) {
                        if (sAction !== MessageBox.Action.OK) return;

                        const oActionBinding = oModel.bindContext(
                            "BatchMergeService.mergeBatch(...)",
                            oContext,
                            { $$inheritExpandSelect: false }
                        );

                        oActionBinding.execute("$auto").then(function () {
                            MessageToast.show("Batch merge completed successfully!");
                            oModel.refresh();
                        }).catch(function (oError) {
                            const sMsg = oError?.error?.message
                                || oError?.message
                                || JSON.stringify(oError);
                            MessageBox.error("Failed to merge batch: " + sMsg);
                        });
                    }
                }
            );
        }
    });
});
