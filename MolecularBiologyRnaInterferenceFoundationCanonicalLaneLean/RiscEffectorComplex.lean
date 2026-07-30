import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean

structure RiscEffectorComplexPackage where
  argonauteProteinLoaded : Prop
  guideRnaBound : Prop
  slicerActivity : Prop
  passengerStrandCleavage : Prop
  targetRecognitionCompetence : Prop

structure RiscEffectorComplexEvidence (R : RiscEffectorComplexPackage) where
  argonauteProteinLoadedClosed : R.argonauteProteinLoaded
  guideRnaBoundClosed : R.guideRnaBound
  slicerActivityClosed : R.slicerActivity
  passengerStrandCleavageClosed : R.passengerStrandCleavage
  targetRecognitionCompetenceClosed : R.targetRecognitionCompetence

def RiscEffectorComplexClosed (R : RiscEffectorComplexPackage) : Prop :=
  R.argonauteProteinLoaded ∧ R.guideRnaBound ∧ R.slicerActivity ∧ R.passengerStrandCleavage ∧ R.targetRecognitionCompetence

theorem risc_effector_complex_closed_from_evidence (R : RiscEffectorComplexPackage)
    (E : RiscEffectorComplexEvidence R) : RiscEffectorComplexClosed R := by
  exact And.intro E.argonauteProteinLoadedClosed
    (And.intro E.guideRnaBoundClosed
      (And.intro E.slicerActivityClosed
        (And.intro E.passengerStrandCleavageClosed E.targetRecognitionCompetenceClosed)))

end MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean
end HautevilleHouse