import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean

structure TransformationEfficiency where
  competentCellQuality : Prop
  heatShockDuration : Float
  heatShockTemperature : Float
  recoveryTime : Float
  selectionMarkerActive : Prop

structure TransformationEfficiencyEvidence (T : TransformationEfficiency) where
  competentCellQualityClosed : T.competentCellQuality
  heatShockDurationClosed : T.heatShockDuration ≥ 30.0 ∧ T.heatShockDuration ≤ 90.0
  heatShockTemperatureClosed : T.heatShockTemperature ≥ 42.0 ∧ T.heatShockTemperature ≤ 43.0
  recoveryTimeClosed : T.recoveryTime ≥ 60.0
  selectionMarkerActiveClosed : T.selectionMarkerActive

def TransformationEfficiencyClosed (T : TransformationEfficiency) : Prop :=
  T.competentCellQuality ∧
  (T.heatShockDuration ≥ 30.0 ∧ T.heatShockDuration ≤ 90.0) ∧
  (T.heatShockTemperature ≥ 42.0 ∧ T.heatShockTemperature ≤ 43.0) ∧
  T.recoveryTime ≥ 60.0 ∧
  T.selectionMarkerActive

theorem transformation_efficiency_closed_from_evidence
    (T : TransformationEfficiency) (E : TransformationEfficiencyEvidence T) :
    TransformationEfficiencyClosed T := by
  exact And.intro E.competentCellQualityClosed
    (And.intro E.heatShockDurationClosed
      (And.intro E.heatShockTemperatureClosed
        (And.intro E.recoveryTimeClosed E.selectionMarkerActiveClosed)))

end MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean
end HautevilleHouse
