.class Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SeslRecyclerViewFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;

    .line 180
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller$6;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 182
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller$6;->this$0:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;

    invoke-static {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->access$100(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;->access$102(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerViewFastScroller;Z)Z

    .line 183
    return-void
.end method
