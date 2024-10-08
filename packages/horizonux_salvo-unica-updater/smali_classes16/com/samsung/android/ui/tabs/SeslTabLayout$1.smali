.class Lcom/samsung/android/ui/tabs/SeslTabLayout$1;
.super Ljava/lang/Object;
.source "SeslTabLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/tabs/SeslTabLayout;->ensureScrollAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/tabs/SeslTabLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/tabs/SeslTabLayout;

    .line 548
    iput-object p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$1;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "var1"    # Landroid/animation/ValueAnimator;

    .line 550
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$1;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->scrollTo(II)V

    .line 551
    return-void
.end method
