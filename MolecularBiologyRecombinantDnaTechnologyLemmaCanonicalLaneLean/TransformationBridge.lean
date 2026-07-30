import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean

structure TransformationPackage where
  hostCell : Type u
  recombinantDna : Type v
  competentCell : Prop
  selectionMarker : Prop
  transformationEfficiency : Nat

structure TransformationEvidence (T : TransformationPackage) where
  competentCellClosed : T.competentCell
  selectionMarkerClosed : T.selectionMarker
  efficiencyPositive : T.transformationEfficiency > 0

def bridgeClosed (T : TransformationPackage) : Prop :=
  T.competentCell ∧ T.selectionMarker ∧ T.transformationEfficiency > 0

theorem bridge_from_transformation_package (T : TransformationPackage)
    (E : TransformationEvidence T) : bridgeClosed T := by
  exact And.intro E.competentCellClosed (And.intro E.selectionMarkerClosed E.efficiencyPositive)

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean
end HautevilleHouse