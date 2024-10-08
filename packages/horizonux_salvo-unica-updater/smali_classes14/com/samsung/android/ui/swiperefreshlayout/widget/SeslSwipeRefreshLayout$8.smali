.class Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$8;
.super Landroid/view/animation/Animation;
.source "SeslSwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;

    .line 1076
    iput-object p1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$8;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .param p1, "var1"    # F
    .param p2, "var2"    # Landroid/view/animation/Transformation;

    .line 1078
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$8;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;

    iget v0, v0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mStartingScale:F

    .line 1079
    .local v0, "var3":F
    iget-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$8;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;

    iget v1, v1, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mStartingScale:F

    neg-float v1, v1

    .line 1080
    .local v1, "var4":F
    iget-object v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$8;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;

    mul-float v3, v1, p1

    add-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->setAnimationProgress(F)V

    .line 1081
    return-void
.end method
