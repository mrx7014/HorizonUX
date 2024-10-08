.class Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$1;
.super Ljava/lang/Object;
.source "SeslAppBarLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->animateOffsetWithDuration(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;

.field final synthetic val$var1:Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;

.field final synthetic val$var2:Lcom/samsung/android/ui/appbar/SeslAppBarLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 948
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$1;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$1;"
    iput-object p1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$1;->this$0:Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;

    iput-object p2, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$1;->val$var1:Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;

    iput-object p3, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$1;->val$var2:Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "var1x"    # Landroid/animation/ValueAnimator;

    .line 950
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$1;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$1;"
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$1;->this$0:Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;

    iget-object v1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$1;->val$var1:Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;

    iget-object v2, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$1;->val$var2:Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->setHeaderTopBottomOffset(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;I)I

    .line 951
    return-void
.end method
