import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean

structure ScreeningPCR where
  forwardPrimer : String
  reversePrimer : String
  annealingTemperature : Float
  extensionTime : Float
  cycleCount : Nat

structure ScreeningPCREvidence (S : ScreeningPCR) where
  forwardPrimerClosed : S.forwardPrimer.length ≥ 18
  reversePrimerClosed : S.reversePrimer.length ≥ 18
  annealingTemperatureClosed : S.annealingTemperature ≥ 55.0 ∧ S.annealingTemperature ≤ 65.0
  extensionTimeClosed : S.extensionTime ≥ 30.0
  cycleCountClosed : S.cycleCount ≥ 25

def ScreeningPCRClosed (S : ScreeningPCR) : Prop :=
  S.forwardPrimer.length ≥ 18 ∧
  S.reversePrimer.length ≥ 18 ∧
  (S.annealingTemperature ≥ 55.0 ∧ S.annealingTemperature ≤ 65.0) ∧
  S.extensionTime ≥ 30.0 ∧
  S.cycleCount ≥ 25

theorem screening_pcr_closed_from_evidence
    (S : ScreeningPCR) (E : ScreeningPCREvidence S) :
    ScreeningPCRClosed S := by
  exact And.intro E.forwardPrimerClosed
    (And.intro E.reversePrimerClosed
      (And.intro E.annealingTemperatureClosed
        (And.intro E.extensionTimeClosed E.cycleCountClosed)))

end MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean
end HautevilleHouse
