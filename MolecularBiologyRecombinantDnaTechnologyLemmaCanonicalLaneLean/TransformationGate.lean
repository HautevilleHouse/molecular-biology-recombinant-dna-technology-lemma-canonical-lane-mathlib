import MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean.LigationClosure

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean

structure TransformationEvidence {R : RecombinantDNAPackage}
    {E : RestrictionEnzymePackage R} (L : LigationEvidence E) where
  hostCellUptake : Prop
  selectionMarkerExpression : Prop
  recombinantRecovered : Prop

def gateClosed {R : RecombinantDNAPackage} {E : RestrictionEnzymePackage R}
    (L : LigationEvidence E) (T : TransformationEvidence L) : Prop :=
  T.hostCellUptake ∨ T.selectionMarkerExpression ∨ T.recombinantRecovered

theorem gate_from_evidence {R : RecombinantDNAPackage} {E : RestrictionEnzymePackage R}
    (L : LigationEvidence E) (T : TransformationEvidence L) : gateClosed L T := by
  -- pick the first disjunct for demonstration
  exact Or.inl T.hostCellUptake

end MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean
end HautevilleHouse