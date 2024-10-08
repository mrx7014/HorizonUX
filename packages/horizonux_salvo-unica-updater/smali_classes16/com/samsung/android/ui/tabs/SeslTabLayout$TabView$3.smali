.class Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView$3;
.super Ljava/lang/Object;
.source "SeslTabLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->showMainTabTouchBackground(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    .line 2220
    iput-object p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView$3;->this$1:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .param p1, "var1"    # Landroid/view/animation/Animation;

    .line 2222
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2223
    .local v0, "var2":Landroid/view/animation/AnimationSet;
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 2224
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2225
    .local v2, "var3":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v3, 0x190

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2226
    invoke-virtual {v2, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 2227
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2228
    iget-object v1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView$3;->this$1:Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;

    iget-object v1, v1, Lcom/samsung/android/ui/tabs/SeslTabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2229
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "var1"    # Landroid/view/animation/Animation;

    .line 2232
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "var1"    # Landroid/view/animation/Animation;

    .line 2235
    return-void
.end method
