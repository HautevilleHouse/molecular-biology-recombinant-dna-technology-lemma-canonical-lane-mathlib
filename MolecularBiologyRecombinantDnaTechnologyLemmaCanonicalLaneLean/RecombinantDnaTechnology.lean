import MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean

structure RecombinantDNAPackage where
  originalDNA : Type u
  vectorDNA : Type v
  restrictionEnzyme : Type w
  ligaseAction : Prop
  recombinantConstruct : Prop
  transformationEfficiency : Prop

def dnaWitnessClosed (P : RecombinantDNAPackage) : Prop :=
  P.ligaseAction ∧ P.recombinantConstruct ∧ P.transformationEfficiency

end MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean
end HautevilleHouse