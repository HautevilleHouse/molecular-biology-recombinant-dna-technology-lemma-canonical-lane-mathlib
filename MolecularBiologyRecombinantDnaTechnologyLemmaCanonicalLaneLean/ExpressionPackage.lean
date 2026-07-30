import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean.ScreeningPackage

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean

structure ExpressionPackage {R : RestrictionEnzymePackage} {L : LigationPackage R} {T : TransformationPackage L}
    (S : ScreeningPackage T) where
  promoterPresent : Bool
  terminatorPresent : Bool
  proteinDetected : Bool
  functionalAssay : Bool

structure ExpressionEvidence {R : RestrictionEnzymePackage} {L : LigationPackage R} {T : TransformationPackage L}
    {S : ScreeningPackage T} (E : ExpressionPackage S) where
  promoterClosed : E.promoterPresent = true → E.proteinDetected = true
  terminatorClosed : E.terminatorPresent = true → E.proteinDetected = true
  functionalClosed : E.functionalAssay = true → E.proteinDetected = true

def ExpressionClosed {R : RestrictionEnzymePackage} {L : LigationPackage R} {T : TransformationPackage L}
    {S : ScreeningPackage T} (E : ExpressionPackage S) : Prop :=
  (E.promoterPresent → E.proteinDetected) ∧
  (E.terminatorPresent → E.proteinDetected) ∧
  (E.functionalAssay → E.proteinDetected)

theorem expression_closed_from_evidence
    {R : RestrictionEnzymePackage} {L : LigationPackage R} {T : TransformationPackage L}
    {S : ScreeningPackage T} (E : ExpressionPackage S) (Ev : ExpressionEvidence E) : ExpressionClosed E :=
  And.intro (fun h => Ev.promoterClosed h) (And.intro (fun h => Ev.terminatorClosed h) (fun h => Ev.functionalClosed h))

end MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean
end HautevilleHouse