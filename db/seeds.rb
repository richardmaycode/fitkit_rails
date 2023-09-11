# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

AVAILABLE_MUSCLES = %W(abdominals abductors adductors biceps calves chest forearms glutes hamstrings lats lower_back middle_back neck quadriceps traps triceps)
for muscle in AVAILABLE_MUSCLES do
    Muscle.create! name: muscle
end

Exercise.create! name: "Hammer Curls", instructions: "Stand up with your torso upright and a dumbbell on each hand being held at arms length. The elbows should be close to the torso. The palms of the hands should be facing your torso. This will be your starting position. Now, while holding your upper arm stationary, exhale and curl the weight forward while contracting the biceps. Continue to raise the weight until the biceps are fully contracted and the dumbbell is at shoulder level. Hold the contracted position for a brief moment as you squeeze the biceps. Tip: Focus on keeping the elbow stationary and only moving your forearm. After the brief pause, inhale and slowly begin the lower the dumbbells back down to the starting position. Repeat for the recommended amount of repetitions.  Variations: There are many possible variations for this movement. For instance, you can perform the exercise sitting down on a bench with or without back support and you can also perform it by alternating arms; first lift the right arm for one repetition, then the left, then the right, etc.", difficulty: :intermediate, category: :lifting

Exercise.create! name: "Child's Pose", instructions: "Kneel and sit on your knees with your knees slightly apart. Lean forward, fold your arms in front of you on the floor, and rest your forehead on your arms", difficulty: :beginner, category: :stretching
