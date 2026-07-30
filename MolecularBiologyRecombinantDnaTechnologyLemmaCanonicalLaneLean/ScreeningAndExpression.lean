import MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean.LigationTransformation

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean

structure ScreeningPackage where
  selectivePlates : Prop
  colonyPcr : Prop
  sequencingConfirmation : Prop
  expressionInduced : Prop
  functionalAssay : Prop

structure ScreeningEvidence (S : ScreeningPackage) where
  selectivePlatesClosed : S.selectivePlates
  colonyPcrClosed : S.colonyPcr
  sequencingConfirmationClosed : S.sequencingConfirmation
  expressionInducedClosed : S.expressionInduced
  functionalAssayClosed : S.functionalAssay

def ScreeningClosed (S : ScreeningPackage) : Prop :=
  S.sequencingConfirmation ∧ S.functionalAssay

theorem screening_closed_from_evidence
    (S : ScreeningPackage) (E : ScreeningEvidence S) :
    ScreeningClosed S := by
  exact And.intro E.sequencingConfirmationClosed E.functionalAssayClosed

end MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean
end HautevilleHouse
