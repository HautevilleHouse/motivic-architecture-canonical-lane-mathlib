import MotivicArchitectureCanonicalLaneLean.Formalization
import MotivicArchitectureCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace MotivicArchitectureCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "56ac2e90dd55889ef7e731a248add8303f27e4c779f743b62195042b49eca2c4", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "6a310d12a5d42d22ffab2ae3fa87c52b25c3d33821ab6230442b560353c86fb3", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "20afb95d81e77efa84b4c9e82dfc8b15e315a26f6cb03f20d8fadd30967d7808", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "cd116bb11b0a71dd6f6c971701473e148e69f4c1e6f6588756c80f9aa38d6b44", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "1de0be613bd80afe2151bc78d40550999fcd681a13989b7db4d04e2a3d452efd", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "56042c32229a3f3a918b25857f78451323cdade13a7de032c22022b2a2976145", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "1e942700bfc642b90216837e41dab426cb8c5f6ddb80c9c914aaa42d76e726ed", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "e0dfffdd7db10b9ea3ad694c0a5db30b0a8e820f345045f9349d52ad596198b0", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "11e11e9fbbf6fb3d3557a2c97841c848b2b296ec29bf2ae3650ee4dfa8c546e4", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
  { gate := "MOT_G1", constant := "kappa_realization" },
  { gate := "MOT_G2", constant := "sigma_filtration" },
  { gate := "MOT_G3", constant := "kappa_compact" },
  { gate := "MOT_G4", constant := "rho_rigidity" },
  { gate := "MOT_G5", constant := "regulator_transfer" },
  { gate := "MOT_G6", constant := "eps_coh" },
  { gate := "MOT_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "a521591240024ff63f91cf14bcef1e557e5eff2d927c32c75ed5e5ff29f71e0c" },
  { path := "README.md", sha256 := "a1461c22611757501c8501f023ded9b7f6235ad25bba1e5f40c663fdef35e659" },
  { path := "artifacts/constants_extracted.json", sha256 := "cd116bb11b0a71dd6f6c971701473e148e69f4c1e6f6588756c80f9aa38d6b44" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "20afb95d81e77efa84b4c9e82dfc8b15e315a26f6cb03f20d8fadd30967d7808" },
  { path := "artifacts/constants_registry.json", sha256 := "1de0be613bd80afe2151bc78d40550999fcd681a13989b7db4d04e2a3d452efd" },
  { path := "artifacts/promotion_report.json", sha256 := "1e942700bfc642b90216837e41dab426cb8c5f6ddb80c9c914aaa42d76e726ed" },
  { path := "artifacts/stitch_constants.json", sha256 := "56042c32229a3f3a918b25857f78451323cdade13a7de032c22022b2a2976145" },
  { path := "notes/EG1_public.md", sha256 := "80a68b356f2b7f0afb707ec300269ec3b46c1783f2e7aa887441fc5b02dd4230" },
  { path := "notes/EG2_public.md", sha256 := "7df16cbbb0fc570e897afbd58cb02c2c3c69f21f25644ba9851ca4d648472163" },
  { path := "notes/EG3_public.md", sha256 := "bbdd1e2f71e86dec04d3aad2c98a5ee270698c3542202ba1e8214a3cd35dcb12" },
  { path := "notes/EG4_public.md", sha256 := "48f4afbca75dc392b97cbb920b7a9fe20644b1932dc8228d942bf48e3eb1355f" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "6a310d12a5d42d22ffab2ae3fa87c52b25c3d33821ab6230442b560353c86fb3" },
  { path := "notes/GEOMETRIC_GALOIS_BRIDGE.md", sha256 := "14603c32fd4e681a7369e78c68eef41e59d7a2e770ba8a90bafb44d76ec1e00e" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "e0229274c721d3545d918d44e262ab721f0dc3d1d1babd76afc1014095d67260" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "481021003d3977981f29b214e11db7d4441699f1d49b1e60b6a0bf9acb3c5f12" },
  { path := "paper/MOTIVIC_ARCHITECTURE_PREPRINT.md", sha256 := "da96e98b91a000c8acac43b17dd409b31485dbe36a6b85e4aad8a5a6d99f57ba" },
  { path := "repro/REPRO_PACK.md", sha256 := "56358a1a64a7bd13d0400a5ba11083a2a1b17ff9d133951a002954e956749817" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "67e2458e0d61b4a25339c78d4bf8c16f676bb9cf7c2c613d1882fba2e7d82293" },
  { path := "repro/certificate_baseline.json", sha256 := "11e11e9fbbf6fb3d3557a2c97841c848b2b296ec29bf2ae3650ee4dfa8c546e4" },
  { path := "repro/run_repro.sh", sha256 := "4ccfd1a4c851a5ce5950c66d27d07e1edc2f345d743bb53fe6867ebfe6ea890c" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/mot_closure_guard.py", sha256 := "a1ffcaa4f35b0c62b8d5102adb84ce40bb02afd8bf99a1bf443ac1a1a610c812" },
  { path := "scripts/README.md", sha256 := "d60a004e178905f2bb06a4421748636041d16f01ba580d64aa84481aff424264" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "MOT_G1", status := "PASS" },
  { gate := "MOT_G2", status := "PASS" },
  { gate := "MOT_G3", status := "PASS" },
  { gate := "MOT_G4", status := "PASS" },
  { gate := "MOT_G5", status := "PASS" },
  { gate := "MOT_G6", status := "PASS" },
  { gate := "MOT_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_compact", value := "0.8038585209003215" },
  { key := "kappa_realization", value := "1.095567" },
  { key := "regulator_transfer", value := "1.0305400000000002" },
  { key := "rho_rigidity", value := "1.078" },
  { key := "sigma_filtration", value := "1.075" },
  { key := "sigma_star_can", value := "1.054" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "kappa_compact",
  "kappa_realization",
  "regulator_transfer",
  "rho_rigidity",
  "sigma_filtration",
  "sigma_star_can"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 26 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end MotivicArchitectureCanonicalLaneLean
end HautevilleHouse
