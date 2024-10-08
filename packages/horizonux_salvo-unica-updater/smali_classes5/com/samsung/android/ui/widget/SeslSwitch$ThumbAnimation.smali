.class Lcom/samsung/android/ui/widget/SeslSwitch$ThumbAnimation;
.super Landroid/view/animation/Animation;
.source "SeslSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/widget/SeslSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbAnimation"
.end annotation


# instance fields
.field final mDiff:F

.field final mEndPosition:F

.field final mStartPosition:F

.field final synthetic this$0:Lcom/samsung/android/ui/widget/SeslSwitch;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/widget/SeslSwitch;FF)V
    .locals 0
    .param p2, "startPosition"    # F
    .param p3, "endPosition"    # F

    .line 1097
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslSwitch$ThumbAnimation;->this$0:Lcom/samsung/android/ui/widget/SeslSwitch;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 1098
    iput p2, p0, Lcom/samsung/android/ui/widget/SeslSwitch$ThumbAnimation;->mStartPosition:F

    .line 1099
    iput p3, p0, Lcom/samsung/android/ui/widget/SeslSwitch$ThumbAnimation;->mEndPosition:F

    .line 1100
    sub-float p1, p3, p2

    iput p1, p0, Lcom/samsung/android/ui/widget/SeslSwitch$ThumbAnimation;->mDiff:F

    .line 1101
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 1105
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch$ThumbAnimation;->this$0:Lcom/samsung/android/ui/widget/SeslSwitch;

    iget v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch$ThumbAnimation;->mStartPosition:F

    iget v2, p0, Lcom/samsung/android/ui/widget/SeslSwitch$ThumbAnimation;->mDiff:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/widget/SeslSwitch;->setThumbPosition(F)V

    .line 1106
    return-void
.end method
