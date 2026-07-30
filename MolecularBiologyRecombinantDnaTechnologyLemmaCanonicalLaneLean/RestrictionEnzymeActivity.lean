import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean

structure RestrictionEnzymePackage where
  enzyme : Type
  recognitionSite : String
  cleavesDna : Bool
  stickyEnds : Bool
  methylatedSite : Bool

def restrictionEnzymeActive (R : RestrictionEnzymePackage) : Prop :=
  R.cleavesDna ∧ ¬ R.methylatedSite

structure RestrictionEnzymeEvidence (R : RestrictionEnzymePackage) where
  cleavesDnaClosed : R.cleavesDna
  methylatedSiteClosed : ¬ R.methylatedSite

theorem restriction_enzyme_active_from_evidence (R : RestrictionEnzymePackage) (E : RestrictionEnzymeEvidence R) :
    restrictionEnzymeActive R := by
  exact And.intro E.cleavesDnaClosed E.methylatedSiteClosed

end MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean
end HautevilleHouse
