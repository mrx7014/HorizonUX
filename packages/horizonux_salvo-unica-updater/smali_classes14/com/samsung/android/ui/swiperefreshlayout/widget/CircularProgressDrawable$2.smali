.class Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$2;
.super Ljava/lang/Object;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;

.field final synthetic val$var1:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$2;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;

    iput-object p2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$2;->val$var1:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "var1x"    # Landroid/animation/Animator;

    .line 157
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "var1x"    # Landroid/animation/Animator;

    .line 160
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "var1x"    # Landroid/animation/Animator;

    .line 163
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$2;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;

    iget-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$2;->val$var1:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->applyTransformation(FLcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;Z)V

    .line 164
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$2;->val$var1:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->storeOriginals()V

    .line 165
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$2;->val$var1:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->goToNextColor()V

    .line 166
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$2;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;

    iget-boolean v0, v0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mFinishing:Z

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$2;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mFinishing:Z

    .line 168
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 169
    const-wide/16 v2, 0x693

    invoke-virtual {p1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 170
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 171
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$2;->val$var1:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setShowArrow(Z)V

    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$2;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;

    .line 174
    .local v0, "var2":Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;
    iget v1, v0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRotationCount:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRotationCount:F

    .line 177
    .end local v0    # "var2":Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;
    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "var1x"    # Landroid/animation/Animator;

    .line 180
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$2;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->mRotationCount:F

    .line 181
    return-void
.end method
