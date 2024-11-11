.class Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$1;
.super Ljava/lang/Object;
.source "SeslSwipeRefreshLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    .line 133
    iput-object p1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$1;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "var1"    # Landroid/view/animation/Animation;

    .line 135
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$1;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;

    iget-boolean v0, v0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mRefreshing:Z

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$1;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;

    iget-object v0, v0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->setAlpha(I)V

    .line 137
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$1;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;

    iget-object v0, v0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->start()V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$1;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;

    iget-boolean v0, v0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mNotify:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$1;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;

    iget-object v0, v0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mListener:Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$OnRefreshListener;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$1;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;

    iget-object v0, v0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mListener:Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$OnRefreshListener;

    invoke-interface {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$OnRefreshListener;->onRefresh()V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$1;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;

    .line 143
    .local v0, "var2":Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;
    iget-object v1, v0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->getTop()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 144
    .end local v0    # "var2":Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;
    goto :goto_0

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$1;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->reset()V

    .line 148
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "var1"    # Landroid/view/animation/Animation;

    .line 151
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "var1"    # Landroid/view/animation/Animation;

    .line 154
    return-void
.end method
