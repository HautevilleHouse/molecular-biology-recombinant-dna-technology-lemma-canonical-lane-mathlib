import MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean.RecombinantDnaTechnology

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean

structure RestrictionEnzymePackage (R : RecombinantDNAPackage) where
  recognitionSequence : Prop
  cutSiteSpecific : Prop
  stickyEndsFormed : Prop
  compatibilityWithVector : Prop

def restrictionBridgeClosed (R : RecombinantDNAPackage) (E : RestrictionEnzymePackage R) : Prop :=
  E.recognitionSequence ∧ E.cutSiteSpecific ∧ E.stickyEndsFormed ∧ E.compatibilityWithVector

end MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean
end HautevilleHouse