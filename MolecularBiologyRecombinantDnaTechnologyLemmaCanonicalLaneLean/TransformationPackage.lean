import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean.LigationPackage

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean

structure TransformationPackage {R : RestrictionEnzymePackage} (L : LigationPackage R) where
  hostCell : String
  competent : Bool
  selectionMarker : String
  transformationEfficiency : Float

structure TransformationEvidence {R : RestrictionEnzymePackage} {L : LigationPackage R} (T : TransformationPackage L) where
  competentClosed : T.competent = true → T.transformationEfficiency > 0.0
  selectionMarkerClosed : T.selectionMarker ≠ ""

def TransformationClosed {R : RestrictionEnzymePackage} {L : LigationPackage R} (T : TransformationPackage L) : Prop :=
  (T.competent → T.transformationEfficiency > 0.0) ∧ T.selectionMarker ≠ ""

theorem transformation_closed_from_evidence
    {R : RestrictionEnzymePackage} {L : LigationPackage R} (T : TransformationPackage L)
    (E : TransformationEvidence T) : TransformationClosed T :=
  And.intro (fun h => E.competentClosed h) E.selectionMarkerClosed

end MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean
end HautevilleHouse