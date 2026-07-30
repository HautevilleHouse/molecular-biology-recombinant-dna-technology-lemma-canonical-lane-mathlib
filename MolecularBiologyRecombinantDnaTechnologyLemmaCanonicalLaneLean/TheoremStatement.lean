import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean

structure DnaTechnologyAdmittedObject where
  dnaSequence : Type
  restrictionEnzyme : Type
  recombinantMolecule : Type
  conclusion : Prop

def DnaTechnologyWitnessClosed (O : DnaTechnologyAdmittedObject) : Prop :=
  O.conclusion

end MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean
end HautevilleHouse