import MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean

structure RestrictionEnzymeDigestionPackage where
  recognitionSequence : String
  cutSite : Nat
  stickyEnd : Bool
  bluntEnd : Bool
  digestionComplete : Prop

structure RestrictionEnzymeDigestionEvidence (R : RestrictionEnzymeDigestionPackage) where
  recognitionSequenceConfirmed : R.recognitionSequence = "GAATTC" ∨ R.recognitionSequence = "AAGCTT"
  cutSiteCorrect : R.cutSite = 1 ∨ R.cutSite = 3
  digestionCompleteClosed : R.digestionComplete

def RestrictionEnzymeDigestionClosed (R : RestrictionEnzymeDigestionPackage) : Prop :=
  R.digestionComplete ∧ (R.stickyEnd ∨ R.bluntEnd)

theorem restriction_enzyme_digestion_closed_from_evidence
    (R : RestrictionEnzymeDigestionPackage) (E : RestrictionEnzymeDigestionEvidence R) :
    RestrictionEnzymeDigestionClosed R := by
  exact And.intro E.digestionCompleteClosed (Or.inl (by
    have : (R.recognitionSequence = "GAATTC" ∨ R.recognitionSequence = "AAGCTT") := E.recognitionSequenceConfirmed
    exact this.elim (fun h => by
      have : R.recognitionSequence = "GAATTC" := h
      exact R.stickyEnd) (fun h => by
      have : R.recognitionSequence = "AAGCTT" := h
      exact R.bluntEnd)))

end MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean
end HautevilleHouse
