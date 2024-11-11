.class Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator$1;
.super Ljava/lang/Object;
.source "SeslTabRoundRectIndicator.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator;->startPressEffect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator;

    .line 87
    iput-object p1, p0, Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator$1;->this$0:Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 95
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator$1;->this$0:Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator;->access$002(Lcom/samsung/android/ui/tabs/SeslTabRoundRectIndicator;Landroid/view/animation/AnimationSet;)Landroid/view/animation/AnimationSet;

    .line 96
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 92
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 89
    return-void
.end method
