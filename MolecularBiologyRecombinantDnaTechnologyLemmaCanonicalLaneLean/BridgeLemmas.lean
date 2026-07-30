import MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean.RestrictionEnzymeBridge

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean

def bridgeClosed (R : RecombinantDNAPackage) (E : RestrictionEnzymePackage R) : Prop :=
  restrictionBridgeClosed R E

theorem bridge_from_admissible_class (R : RecombinantDNAPackage) (E : RestrictionEnzymePackage R) :
    bridgeClosed R E := by
  -- assume the bridge is closed by construction; we supply the conjunction from E's fields
  exact And.intro E.recognitionSequence (And.intro E.cutSiteSpecific (And.intro E.stickyEndsFormed E.compatibilityWithVector))

end MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean
end HautevilleHouse