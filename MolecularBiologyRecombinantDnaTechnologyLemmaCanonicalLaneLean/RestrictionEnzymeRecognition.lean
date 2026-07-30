import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean

structure RestrictionEnzymeRecognitionSite where
  recognitionSequence : String
  cutPosition : Nat
  stickyEndLength : Nat
  methylationSensitivity : Prop
  recognitionLength : Nat

structure RestrictionEnzymeRecognitionEvidence (R : RestrictionEnzymeRecognitionSite) where
  recognitionSequenceClosed : R.recognitionSequence.length = R.recognitionLength
  cutPositionClosed : R.cutPosition ≤ R.recognitionLength
  stickyEndLengthClosed : R.stickyEndLength > 0
  methylationSensitivityClosed : R.methylationSensitivity

def RestrictionEnzymeRecognitionClosed (R : RestrictionEnzymeRecognitionSite) : Prop :=
  R.recognitionSequence.length = R.recognitionLength ∧
  R.cutPosition ≤ R.recognitionLength ∧
  R.stickyEndLength > 0 ∧
  R.methylationSensitivity

theorem restriction_enzyme_recognition_closed_from_evidence
    (R : RestrictionEnzymeRecognitionSite) (E : RestrictionEnzymeRecognitionEvidence R) :
    RestrictionEnzymeRecognitionClosed R := by
  exact And.intro E.recognitionSequenceClosed
    (And.intro E.cutPositionClosed
      (And.intro E.stickyEndLengthClosed E.methylationSensitivityClosed))

end MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean
end HautevilleHouse
