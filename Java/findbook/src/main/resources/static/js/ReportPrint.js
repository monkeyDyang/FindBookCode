


function OnExportPDF(viewModel) {
    if (!viewModel.PageLoaded())
        return;
    viewModel.Export(ExportType.Pdf, function (url) {
        try {
            window.open(url, '_blank');
        } catch (e) {
        }
    }, true, { FileName: 'ActiveReports报表.pdf' });
};
function OnPrint(viewModel) {
    if (!viewModel.PageLoaded())
        return;
    viewModel.Print();
};
function OnExportWord(viewModel) {
    if (!viewModel.PageLoaded())
        return;
    viewModel.Export(ExportType.Word, function (url) {
        try {
            window.open(url, '_blank');
        } catch (e) {
        }
    }, true, { FileName: 'ActiveReports报表.doc' });
};
function OnExportExcel(viewModel) {
    if (!viewModel.PageLoaded())
        return;
    viewModel.Export(ExportType.Xls, function (url) {
        try {
            window.open(url, '_blank');
        } catch (e) {
        }
    }, true, {
        FileName: 'ActiveReports报表.xlsx'
    });
};
function visible(viewModel) {
}