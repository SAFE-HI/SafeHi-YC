import 'package:safehi_yc/model/visit_summary_model.dart';
import 'package:safehi_yc/service/visit_summary_service.dart';

class VisitSummaryRepository {
  final VisitSummaryService service;

  VisitSummaryRepository({required this.service});

  Future<VisitSummaryResponse> getSummary(int reportId) {
    return service.fetchVisitSummary(reportId);
  }

  Future<void> uploadEditedSummary({
    required int reportId,
    required List<VisitSummary> summaries,
  }) {
    return service.uploadVisitSummaryEdit(
      reportId: reportId,
      summaries: summaries,
    );
  }
}
