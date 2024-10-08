.class Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$2;
.super Landroid/view/animation/Animation;
.source "SeslSwipeRefreshLayout.java"


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

    .line 156
    iput-object p1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$2;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .param p1, "var1"    # F
    .param p2, "var2"    # Landroid/view/animation/Transformation;

    .line 159
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$2;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;

    iget-boolean v0, v0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mUsingCustomStart:Z

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$2;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;

    iget v0, v0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    iget-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$2;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;

    iget v1, v1, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mOriginalOffsetTop:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int/2addr v0, v1

    .local v0, "var3":I
    goto :goto_0

    .line 162
    .end local v0    # "var3":I
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$2;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;

    iget v0, v0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    .line 165
    .restart local v0    # "var3":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$2;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;

    iget v1, v1, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mFrom:I

    .line 166
    .local v1, "var4":I
    iget-object v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$2;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;

    iget v2, v2, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mFrom:I

    sub-int v2, v0, v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    .line 167
    .local v2, "var5":I
    iget-object v3, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$2;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;

    iget-object v3, v3, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v3}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->getTop()I

    move-result v0

    .line 168
    iget-object v3, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$2;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;

    add-int v4, v1, v2

    sub-int/2addr v4, v0

    invoke-virtual {v3, v4}, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 169
    iget-object v3, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout$2;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;

    iget-object v3, v3, Lcom/samsung/android/ui/swiperefreshlayout/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, p1

    invoke-virtual {v3, v4}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->setArrowScale(F)V

    .line 170
    return-void
.end method
