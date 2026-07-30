import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean

structure RestrictionEnzymePackage where
  enzymeType : Type
  recognitionSite : String
  cutPattern : String
  stickyEnds : Bool
  methylated : Bool

structure RestrictionEnzymeEvidence (R : RestrictionEnzymePackage) where
  recognitionSiteClosed : R.recognitionSite ≠ ""
  cutPatternClosed : R.cutPattern ≠ ""
  stickyEndsClosed : R.stickyEnds = true ∨ R.stickyEnds = false

def RestrictionEnzymeClosed (R : RestrictionEnzymePackage) : Prop :=
  R.recognitionSite ≠ "" ∧ R.cutPattern ≠ "" ∧ (R.stickyEnds = true ∨ R.stickyEnds = false)

theorem restriction_enzyme_closed_from_evidence
    (R : RestrictionEnzymePackage) (E : RestrictionEnzymeEvidence R) : RestrictionEnzymeClosed R :=
  And.intro E.recognitionSiteClosed (And.intro E.cutPatternClosed E.stickyEndsClosed)

end MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean
end HautevilleHouse