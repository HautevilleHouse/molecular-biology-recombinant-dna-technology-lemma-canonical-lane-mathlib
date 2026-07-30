import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean

structure ExpressionAnalysisPackage where
  geneOfInterest : String
  promoter : String
  hostSystem : String
  expressionDetected : Prop
  proteinPurified : Prop

structure ExpressionAnalysisEvidence (E : ExpressionAnalysisPackage) where
  geneCloned : E.geneOfInterest ≠ ""
  promoterActive : E.promoter ≠ ""
  expressionObserved : E.expressionDetected
  purificationDone : E.proteinPurified

def ExpressionAnalysisClosed (E : ExpressionAnalysisPackage) : Prop :=
  E.geneOfInterest ≠ "" ∧ E.promoter ≠ "" ∧ E.expressionDetected ∧ E.proteinPurified

theorem expression_analysis_closed_from_evidence
    (E : ExpressionAnalysisPackage) (Ev : ExpressionAnalysisEvidence E) :
    ExpressionAnalysisClosed E := by
  exact And.intro Ev.geneCloned (And.intro Ev.promoterActive (And.intro Ev.expressionObserved Ev.purificationDone))

end MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean
end HautevilleHouse