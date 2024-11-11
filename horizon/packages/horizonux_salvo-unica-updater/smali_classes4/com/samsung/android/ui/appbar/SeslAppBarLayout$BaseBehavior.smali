.class public Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;
.super Lcom/samsung/android/ui/appbar/HeaderBehavior;
.source "SeslAppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/appbar/SeslAppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BaseBehavior"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$BaseDragCallback;,
        Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/ui/appbar/SeslAppBarLayout;",
        ">",
        "Lcom/samsung/android/ui/appbar/HeaderBehavior<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public lastStartedType:I

.field public mDiffY_Touch:F

.field public mIsFlingScrollDown:Z

.field public mIsFlingScrollUp:Z

.field public mIsScrollHold:Z

.field public mIsSetStaticDuration:Z

.field public mLastMotionY_Touch:F

.field public mLifted:Z

.field public mToolisMouse:Z

.field public mTouchSlop:I

.field public mVelocity:F

.field public offsetAnimator:Landroid/animation/ValueAnimator;

.field public offsetDelta:I

.field public offsetToChildIndexOnLayout:I

.field public offsetToChildIndexOnLayoutIsMinHeight:Z

.field public offsetToChildIndexOnLayoutPerc:F

.field public onDragCallback:Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$BaseDragCallback;

.field public touchX:F

.field public touchY:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 878
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    invoke-direct {p0}, Lcom/samsung/android/ui/appbar/HeaderBehavior;-><init>()V

    .line 860
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsFlingScrollDown:Z

    .line 861
    iput-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsFlingScrollUp:Z

    .line 862
    iput-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsScrollHold:Z

    .line 863
    iput-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsSetStaticDuration:Z

    .line 867
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mTouchSlop:I

    .line 868
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mVelocity:F

    .line 871
    iput v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->offsetToChildIndexOnLayout:I

    .line 879
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;

    .line 882
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/appbar/HeaderBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 860
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsFlingScrollDown:Z

    .line 861
    iput-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsFlingScrollUp:Z

    .line 862
    iput-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsScrollHold:Z

    .line 863
    iput-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsSetStaticDuration:Z

    .line 867
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mTouchSlop:I

    .line 868
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mVelocity:F

    .line 871
    iput v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->offsetToChildIndexOnLayout:I

    .line 883
    return-void
.end method

.method public static checkFlag(II)Z
    .locals 1
    .param p0, "var0"    # I
    .param p1, "var1"    # I

    .line 887
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    .line 888
    const/4 v0, 0x1

    .local v0, "var2":Z
    goto :goto_0

    .line 890
    .end local v0    # "var2":Z
    :cond_0
    const/4 v0, 0x0

    .line 893
    .restart local v0    # "var2":Z
    :goto_0
    return v0
.end method

.method public static getAppBarChildOnOffset(Lcom/samsung/android/ui/appbar/SeslAppBarLayout;I)Landroid/view/View;
    .locals 4
    .param p0, "var0"    # Lcom/samsung/android/ui/appbar/SeslAppBarLayout;
    .param p1, "var1"    # I

    .line 897
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 898
    .local v0, "var2":I
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getChildCount()I

    move-result v1

    .line 900
    .local v1, "var3":I
    const/4 p1, 0x0

    :goto_0
    if-ge p1, v1, :cond_1

    .line 901
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 902
    .local v2, "var4":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v0, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt v0, v3, :cond_0

    .line 903
    return-object v2

    .line 900
    .end local v2    # "var4":Landroid/view/View;
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 907
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public final animateOffsetTo(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;IF)V
    .locals 6
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # I
    .param p4, "var4"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TT;IF)V"
        }
    .end annotation

    .line 912
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    .local p2, "var2":Lcom/samsung/android/ui/appbar/SeslAppBarLayout;, "TT;"
    iget v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mVelocity:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mVelocity:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x453b8000    # 3000.0f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    .line 913
    iget v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mVelocity:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr v2, v0

    float-to-double v2, v2

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .local v0, "var5":I
    goto :goto_0

    .line 915
    .end local v0    # "var5":I
    :cond_0
    const/16 v0, 0xfa

    .line 918
    .restart local v0    # "var5":I
    :goto_0
    move v2, v0

    .line 919
    .local v2, "var6":I
    const/16 v3, 0xfa

    if-gt v0, v3, :cond_1

    .line 920
    const/16 v2, 0xfa

    .line 923
    :cond_1
    iget-boolean v3, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsSetStaticDuration:Z

    if-eqz v3, :cond_2

    .line 924
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsSetStaticDuration:Z

    .line 925
    const/16 v2, 0xfa

    .line 928
    :cond_2
    iget v3, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mVelocity:F

    const/high16 v4, 0x44fa0000    # 2000.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 929
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->animateOffsetWithDuration(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;II)V

    .line 932
    :cond_3
    iput v1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mVelocity:F

    .line 933
    return-void
.end method

.method public final animateOffsetWithDuration(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;II)V
    .locals 5
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TT;II)V"
        }
    .end annotation

    .line 936
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    .local p2, "var2":Lcom/samsung/android/ui/appbar/SeslAppBarLayout;, "TT;"
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    .line 937
    .local v0, "var5":I
    if-ne v0, p3, :cond_1

    .line 938
    iget-object v1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    .line 939
    .local v1, "var7":Landroid/animation/ValueAnimator;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 940
    iget-object v2, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 943
    .end local v1    # "var7":Landroid/animation/ValueAnimator;
    :cond_0
    goto :goto_1

    .line 944
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    .line 945
    .local v1, "var6":Landroid/animation/ValueAnimator;
    if-nez v1, :cond_2

    .line 946
    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    .line 947
    sget-object v3, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->SINE_OUT_80_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 948
    iget-object v2, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$1;-><init>(Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 954
    :cond_2
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 957
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    const/16 v3, 0x258

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 958
    iget-object v2, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v4, 0x1

    aput p3, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 959
    iget-object v2, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 961
    .end local v1    # "var6":Landroid/animation/ValueAnimator;
    :goto_1
    return-void
.end method

.method public bridge synthetic canDragView(Landroid/view/View;)Z
    .locals 0

    .line 856
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    check-cast p1, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->canDragView(Lcom/samsung/android/ui/appbar/SeslAppBarLayout;)Z

    move-result p1

    return p1
.end method

.method public canDragView(Lcom/samsung/android/ui/appbar/SeslAppBarLayout;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 964
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    .local p1, "var1":Lcom/samsung/android/ui/appbar/SeslAppBarLayout;, "TT;"
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->onDragCallback:Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$BaseDragCallback;

    .line 965
    .local v0, "var2":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$BaseDragCallback;
    if-eqz v0, :cond_0

    .line 966
    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$BaseDragCallback;->canDrag(Lcom/samsung/android/ui/appbar/SeslAppBarLayout;)Z

    move-result v1

    return v1

    .line 968
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 969
    .local v1, "var5":Ljava/lang/ref/WeakReference;
    const/4 v2, 0x1

    .line 970
    .local v2, "var3":Z
    move v3, v2

    .line 971
    .local v3, "var4":Z
    if-eqz v1, :cond_2

    .line 972
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 973
    .local v4, "var6":Landroid/view/View;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 974
    move v3, v2

    goto :goto_0

    .line 976
    :cond_1
    const/4 v3, 0x0

    .line 980
    .end local v4    # "var6":Landroid/view/View;
    :cond_2
    :goto_0
    return v3
.end method

.method public final canScrollChildren(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;Landroid/view/View;)Z
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .line 986
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    .local p2, "var2":Lcom/samsung/android/ui/appbar/SeslAppBarLayout;, "TT;"
    invoke-virtual {p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->hasScrollableChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getHeight()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 987
    const/4 v0, 0x1

    .local v0, "var4":Z
    goto :goto_0

    .line 989
    .end local v0    # "var4":Z
    :cond_0
    const/4 v0, 0x0

    .line 992
    .restart local v0    # "var4":Z
    :goto_0
    return v0
.end method

.method public final findFirstScrollingChild(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;)Landroid/view/View;
    .locals 4
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;

    .line 996
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    invoke-virtual {p1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildCount()I

    move-result v0

    .line 998
    .local v0, "var2":I
    const/4 v1, 0x0

    .local v1, "var3":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 999
    invoke-virtual {p1, v1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1000
    .local v2, "var4":Landroid/view/View;
    instance-of v3, v2, Landroidx/core/view/NestedScrollingChild;

    if-nez v3, :cond_1

    instance-of v3, v2, Landroid/widget/ListView;

    if-nez v3, :cond_1

    instance-of v3, v2, Landroid/widget/ScrollView;

    if-eqz v3, :cond_0

    goto :goto_1

    .line 998
    .end local v2    # "var4":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1001
    .restart local v2    # "var4":Landroid/view/View;
    :cond_1
    :goto_1
    return-object v2

    .line 1005
    .end local v1    # "var3":I
    .end local v2    # "var4":Landroid/view/View;
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public final getChildIndexOnOffset(Lcom/samsung/android/ui/appbar/SeslAppBarLayout;I)I
    .locals 10
    .param p2, "var2"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .line 1009
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    .local p1, "var1":Lcom/samsung/android/ui/appbar/SeslAppBarLayout;, "TT;"
    invoke-virtual {p1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getChildCount()I

    move-result v0

    .line 1011
    .local v0, "var3":I
    const/4 v1, 0x0

    .local v1, "var4":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1012
    invoke-virtual {p1, v1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1013
    .local v2, "var5":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1014
    .local v3, "var6":I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1015
    .local v4, "var7":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;

    .line 1016
    .local v5, "var10":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;
    move v6, v3

    .line 1017
    .local v6, "var8":I
    move v7, v4

    .line 1018
    .local v7, "var9":I
    invoke-virtual {v5}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v8

    const/16 v9, 0x20

    invoke-static {v8, v9}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->checkFlag(II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1019
    iget v8, v5, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;->topMargin:I

    sub-int v6, v3, v8

    .line 1020
    iget v8, v5, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;->bottomMargin:I

    add-int v7, v4, v8

    .line 1023
    :cond_0
    neg-int v4, p2

    .line 1024
    if-gt v6, v4, :cond_1

    if-lt v7, v4, :cond_1

    .line 1025
    return v1

    .line 1011
    .end local v2    # "var5":Landroid/view/View;
    .end local v3    # "var6":I
    .end local v4    # "var7":I
    .end local v5    # "var10":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;
    .end local v6    # "var8":I
    .end local v7    # "var9":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1029
    .end local v1    # "var4":I
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method public bridge synthetic getMaxDragOffset(Landroid/view/View;)I
    .locals 0

    .line 856
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    check-cast p1, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->getMaxDragOffset(Lcom/samsung/android/ui/appbar/SeslAppBarLayout;)I

    move-result p1

    return p1
.end method

.method public getMaxDragOffset(Lcom/samsung/android/ui/appbar/SeslAppBarLayout;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1033
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    .local p1, "var1":Lcom/samsung/android/ui/appbar/SeslAppBarLayout;, "TT;"
    invoke-virtual {p1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getDownNestedScrollRange()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public getTopBottomOffsetForScrollingSibling()I
    .locals 2

    .line 1037
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->getTopAndBottomOffset()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->offsetDelta:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final interpolateOffset(Lcom/samsung/android/ui/appbar/SeslAppBarLayout;I)I
    .locals 11
    .param p2, "var2"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .line 1041
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    .local p1, "var1":Lcom/samsung/android/ui/appbar/SeslAppBarLayout;, "TT;"
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1042
    .local v0, "var3":I
    invoke-virtual {p1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getChildCount()I

    move-result v1

    .line 1043
    .local v1, "var4":I
    const/4 v2, 0x0

    .line 1045
    .local v2, "var5":B
    const/4 v3, 0x0

    .local v3, "var6":I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 1046
    invoke-virtual {p1, v3}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1047
    .local v4, "var7":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;

    .line 1048
    .local v5, "var8":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;
    invoke-virtual {v5}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 1049
    .local v6, "var9":Landroid/view/animation/Interpolator;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    if-lt v0, v7, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    if-gt v0, v7, :cond_3

    .line 1050
    if-eqz v6, :cond_4

    .line 1051
    invoke-virtual {v5}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v1

    .line 1052
    move v3, v2

    .line 1054
    and-int/lit8 v7, v1, 0x1

    if-eqz v7, :cond_0

    .line 1055
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/lit8 v7, v7, 0x0

    iget v8, v5, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v5, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    .line 1056
    .local v7, "var11":I
    move v3, v7

    .line 1057
    and-int/lit8 v8, v1, 0x2

    if-eqz v8, :cond_0

    .line 1058
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v8

    sub-int v3, v7, v8

    .line 1062
    .end local v7    # "var11":I
    :cond_0
    move v7, v3

    .line 1063
    .restart local v7    # "var11":I
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1064
    invoke-virtual {p1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getTopInset()I

    move-result v8

    sub-int v7, v3, v8

    .line 1067
    :cond_1
    if-lez v7, :cond_2

    .line 1068
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1069
    int-to-float v8, v7

    .line 1070
    .local v8, "var10":F
    sub-int v9, v0, v3

    int-to-float v9, v9

    div-float/2addr v9, v8

    invoke-interface {v6, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v9

    mul-float/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1071
    invoke-static {p2}, Ljava/lang/Integer;->signum(I)I

    move-result v9

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v10

    add-int/2addr v10, v3

    mul-int/2addr v9, v10

    return v9

    .line 1073
    .end local v7    # "var11":I
    .end local v8    # "var10":F
    :cond_2
    goto :goto_1

    .line 1045
    .end local v4    # "var7":Landroid/view/View;
    .end local v5    # "var8":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;
    .end local v6    # "var9":Landroid/view/animation/Interpolator;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1078
    .end local v3    # "var6":I
    :cond_4
    :goto_1
    return p2
.end method

.method public final isScrollHoldMode(Lcom/samsung/android/ui/appbar/SeslAppBarLayout;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1082
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    .local p1, "var1":Lcom/samsung/android/ui/appbar/SeslAppBarLayout;, "TT;"
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mToolisMouse:Z

    if-eqz v0, :cond_0

    .line 1083
    const/4 v0, 0x0

    return v0

    .line 1085
    :cond_0
    const/4 v0, 0x1

    .line 1086
    .local v0, "var2":Z
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->getChildIndexOnOffset(Lcom/samsung/android/ui/appbar/SeslAppBarLayout;I)I

    move-result v1

    .line 1087
    .local v1, "var3":I
    move v2, v0

    .line 1088
    .local v2, "var4":Z
    if-ltz v1, :cond_1

    .line 1089
    move v2, v0

    .line 1090
    invoke-virtual {p1, v1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;

    invoke-virtual {v3}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v3

    const/high16 v4, 0x10000

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_1

    .line 1091
    const/4 v2, 0x0

    .line 1095
    :cond_1
    return v2
.end method

.method public bridge synthetic onLayoutChild(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    .line 856
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    check-cast p2, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->onLayoutChild(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;I)Z

    move-result p1

    return p1
.end method

.method public onLayoutChild(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;I)Z
    .locals 9
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TT;I)Z"
        }
    .end annotation

    .line 1100
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    .local p2, "var2":Lcom/samsung/android/ui/appbar/SeslAppBarLayout;, "TT;"
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/ui/appbar/HeaderBehavior;->onLayoutChild(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;I)Z

    move-result v0

    .line 1101
    .local v0, "var4":Z
    invoke-virtual {p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getPendingAction()I

    move-result v1

    .line 1102
    .local v1, "var5":I
    iget p3, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->offsetToChildIndexOnLayout:I

    .line 1103
    const/4 v2, 0x0

    if-ltz p3, :cond_2

    and-int/lit8 v3, v1, 0x8

    if-nez v3, :cond_2

    .line 1104
    invoke-virtual {p2, p3}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1105
    .local v3, "var6":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    neg-int v1, v4

    .line 1106
    iget-boolean v4, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->offsetToChildIndexOnLayoutIsMinHeight:Z

    if-eqz v4, :cond_0

    .line 1107
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getTopInset()I

    move-result v5

    add-int/2addr v4, v5

    move p3, v4

    .end local p3    # "var3":I
    .local v4, "var3":I
    goto :goto_0

    .line 1109
    .end local v4    # "var3":I
    .restart local p3    # "var3":I
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->offsetToChildIndexOnLayoutPerc:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result p3

    .line 1112
    :goto_0
    add-int v4, v1, p3

    invoke-virtual {p0, p1, p2, v4}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->setHeaderTopBottomOffset(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;I)I

    .line 1113
    .end local v3    # "var6":Landroid/view/View;
    :cond_1
    goto :goto_2

    :cond_2
    if-eqz v1, :cond_1

    .line 1115
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_3

    .line 1116
    const/4 v3, 0x1

    .local v3, "var7":Z
    goto :goto_1

    .line 1118
    .end local v3    # "var7":Z
    :cond_3
    const/4 v3, 0x0

    .line 1121
    .restart local v3    # "var7":Z
    :goto_1
    and-int/lit8 v4, v1, 0x2

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    .line 1122
    invoke-virtual {p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getUpNestedPreScrollRange()I

    move-result v4

    neg-int v1, v4

    .line 1123
    if-eqz v3, :cond_4

    .line 1124
    invoke-virtual {p0, p1, p2, v1, v5}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->animateOffsetTo(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;IF)V

    goto :goto_2

    .line 1126
    :cond_4
    invoke-virtual {p0, p1, p2, v1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->setHeaderTopBottomOffset(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;I)I

    goto :goto_2

    .line 1128
    :cond_5
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_7

    .line 1129
    if-eqz v3, :cond_6

    .line 1130
    invoke-virtual {p0, p1, p2, v2, v5}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->animateOffsetTo(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;IF)V

    goto :goto_2

    .line 1132
    :cond_6
    invoke-virtual {p0, p1, p2, v2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->setHeaderTopBottomOffset(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;I)I

    .line 1137
    .end local v3    # "var7":Z
    :cond_7
    :goto_2
    invoke-virtual {p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->resetPendingAction()V

    .line 1138
    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->offsetToChildIndexOnLayout:I

    .line 1139
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->getTopAndBottomOffset()I

    move-result v3

    invoke-virtual {p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getTotalScrollRange()I

    move-result v4

    neg-int v4, v4

    invoke-static {v3, v4, v2}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->setTopAndBottomOffset(I)Z

    .line 1140
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->getTopAndBottomOffset()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->updateAppBarLayoutDrawableState(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;IIZ)V

    .line 1141
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->getTopAndBottomOffset()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->dispatchOffsetUpdates(I)V

    .line 1142
    return v0
.end method

.method public bridge synthetic onMeasureChild(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 7

    .line 856
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->onMeasureChild(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;IIII)Z

    move-result p1

    return p1
.end method

.method public onMeasureChild(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;IIII)Z
    .locals 7
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # I
    .param p6, "var6"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TT;IIII)Z"
        }
    .end annotation

    .line 1147
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    .local p2, "var2":Lcom/samsung/android/ui/appbar/SeslAppBarLayout;, "TT;"
    invoke-virtual {p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    iget v0, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 1148
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 1149
    const/4 v0, 0x1

    return v0

    .line 1151
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/samsung/android/ui/appbar/HeaderBehavior;->onMeasureChild(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onNestedPreFling(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 6

    .line 856
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->onNestedPreFling(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method public onNestedPreFling(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;Landroid/view/View;FF)Z
    .locals 3
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # Landroid/view/View;
    .param p4, "var4"    # F
    .param p5, "var5"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    .line 1156
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    .local p2, "var2":Lcom/samsung/android/ui/appbar/SeslAppBarLayout;, "TT;"
    iput p5, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mVelocity:F

    .line 1157
    const/high16 v0, -0x3c6a0000    # -300.0f

    cmpg-float v0, p5, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_0

    .line 1158
    iput-boolean v1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsFlingScrollDown:Z

    .line 1159
    iput-boolean v2, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsFlingScrollUp:Z

    goto :goto_0

    .line 1161
    :cond_0
    const/high16 v0, 0x43960000    # 300.0f

    cmpg-float v0, p5, v0

    if-gtz v0, :cond_1

    .line 1162
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mVelocity:F

    .line 1163
    iput-boolean v2, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsFlingScrollDown:Z

    .line 1164
    iput-boolean v2, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsFlingScrollUp:Z

    .line 1165
    return v1

    .line 1168
    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsFlingScrollDown:Z

    .line 1169
    iput-boolean v1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsFlingScrollUp:Z

    .line 1172
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/ui/appbar/HeaderBehavior;->onNestedPreFling(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onNestedPreScroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 8

    .line 856
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->onNestedPreScroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedPreScroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;Landroid/view/View;II[II)V
    .locals 14
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # Landroid/view/View;
    .param p4, "var4"    # I
    .param p5, "var5"    # I
    .param p6, "var6"    # [I
    .param p7, "var7"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "II[II)V"
        }
    .end annotation

    .line 1176
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    .local p2, "var2":Lcom/samsung/android/ui/appbar/SeslAppBarLayout;, "TT;"
    move-object v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p5

    if-eqz v8, :cond_6

    .line 1178
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v9, 0x1

    if-gez v8, :cond_2

    .line 1179
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getTotalScrollRange()I

    move-result v2

    neg-int v2, v2

    .line 1180
    .local v2, "var8":I
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getDownNestedPreScrollRange()I

    move-result v3

    .line 1181
    .local v3, "var9":I
    iput-boolean v9, v6, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsFlingScrollDown:Z

    .line 1182
    iput-boolean v1, v6, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsFlingScrollUp:Z

    .line 1183
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getBottom()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getHeight()I

    move-result v10

    int-to-double v10, v10

    const-wide v12, 0x3fe0a3d70a3d70a4L    # 0.52

    mul-double/2addr v10, v12

    cmpl-double v4, v4, v10

    if-ltz v4, :cond_0

    .line 1184
    iput-boolean v9, v6, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsSetStaticDuration:Z

    .line 1187
    :cond_0
    const/16 v4, -0x1e

    if-ge v8, v4, :cond_1

    .line 1188
    iput-boolean v9, v6, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsFlingScrollDown:Z

    goto :goto_0

    .line 1190
    :cond_1
    iput v0, v6, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mVelocity:F

    .line 1191
    iput-boolean v1, v6, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsFlingScrollDown:Z

    .line 1194
    :goto_0
    move v0, v2

    .line 1195
    .end local p4    # "var4":I
    .local v0, "var4":I
    add-int/2addr v2, v3

    .line 1196
    .end local v3    # "var9":I
    move v10, v0

    move v11, v2

    goto :goto_2

    .line 1197
    .end local v0    # "var4":I
    .end local v2    # "var8":I
    .restart local p4    # "var4":I
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getUpNestedPreScrollRange()I

    move-result v2

    neg-int v2, v2

    .line 1198
    .end local p4    # "var4":I
    .local v2, "var4":I
    iput-boolean v1, v6, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsFlingScrollDown:Z

    .line 1199
    iput-boolean v9, v6, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsFlingScrollUp:Z

    .line 1200
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getBottom()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getHeight()I

    move-result v5

    int-to-double v10, v5

    const-wide v12, 0x3fdb851eb851eb85L    # 0.43

    mul-double/2addr v10, v12

    cmpg-double v3, v3, v10

    if-gtz v3, :cond_3

    .line 1201
    iput-boolean v9, v6, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsSetStaticDuration:Z

    .line 1204
    :cond_3
    const/16 v3, 0x1e

    if-le v8, v3, :cond_4

    .line 1205
    iput-boolean v9, v6, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsFlingScrollUp:Z

    goto :goto_1

    .line 1207
    :cond_4
    iput v0, v6, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mVelocity:F

    .line 1208
    iput-boolean v1, v6, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsFlingScrollUp:Z

    .line 1211
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->getTopAndBottomOffset()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 1212
    iput-boolean v9, v6, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsScrollHold:Z

    .line 1215
    :cond_5
    const/4 v0, 0x0

    move v11, v0

    move v10, v2

    .line 1218
    .end local v2    # "var4":I
    .local v10, "var4":I
    .local v11, "var8":I
    :goto_2
    if-eq v10, v11, :cond_7

    .line 1219
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->scroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;III)I

    move-result v0

    aput v0, p6, v9

    goto :goto_3

    .line 1176
    .end local v10    # "var4":I
    .end local v11    # "var8":I
    .restart local p4    # "var4":I
    :cond_6
    move/from16 v10, p4

    .line 1223
    .end local p4    # "var4":I
    .restart local v10    # "var4":I
    :cond_7
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->isLiftOnScroll()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1224
    invoke-virtual/range {p2 .. p3}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->shouldLift(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setLiftedState(Z)Z

    .line 1227
    :cond_8
    move-object/from16 v0, p3

    move/from16 v1, p7

    invoke-virtual {p0, v8, v7, v0, v1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->stopNestedScrollIfNeeded(ILcom/samsung/android/ui/appbar/SeslAppBarLayout;Landroid/view/View;I)V

    .line 1228
    return-void
.end method

.method public bridge synthetic onNestedScroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V
    .locals 9

    .line 856
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->onNestedScroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;Landroid/view/View;IIIII)V

    return-void
.end method

.method public onNestedScroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;Landroid/view/View;IIIII)V
    .locals 7
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # Landroid/view/View;
    .param p4, "var4"    # I
    .param p5, "var5"    # I
    .param p6, "var6"    # I
    .param p7, "var7"    # I
    .param p8, "var8"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "IIIII)V"
        }
    .end annotation

    .line 1232
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    .local p2, "var2":Lcom/samsung/android/ui/appbar/SeslAppBarLayout;, "TT;"
    invoke-virtual {p0, p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->isScrollHoldMode(Lcom/samsung/android/ui/appbar/SeslAppBarLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1233
    if-gez p7, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsScrollHold:Z

    if-nez v0, :cond_0

    .line 1234
    invoke-virtual {p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getDownNestedScrollRange()I

    move-result v0

    neg-int v5, v0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p7

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->scroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;III)I

    .line 1235
    invoke-virtual {p0, p7, p2, p3, p8}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->stopNestedScrollIfNeeded(ILcom/samsung/android/ui/appbar/SeslAppBarLayout;Landroid/view/View;I)V

    goto :goto_0

    .line 1237
    :cond_0
    const/4 v0, 0x1

    invoke-static {p3, v0}, Landroidx/core/view/ViewCompat;->stopNestedScroll(Landroid/view/View;I)V

    goto :goto_0

    .line 1239
    :cond_1
    if-gez p7, :cond_2

    .line 1240
    invoke-virtual {p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getDownNestedScrollRange()I

    move-result v0

    neg-int v5, v0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p7

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->scroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;III)I

    .line 1241
    invoke-virtual {p0, p7, p2, p3, p8}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->stopNestedScrollIfNeeded(ILcom/samsung/android/ui/appbar/SeslAppBarLayout;Landroid/view/View;I)V

    .line 1244
    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onRestoreInstanceState(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0

    .line 856
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    check-cast p2, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->onRestoreInstanceState(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onRestoreInstanceState(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TT;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .line 1247
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    .local p2, "var2":Lcom/samsung/android/ui/appbar/SeslAppBarLayout;, "TT;"
    instance-of v0, p3, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$SavedState;

    if-eqz v0, :cond_0

    .line 1248
    move-object v0, p3

    check-cast v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$SavedState;

    .line 1249
    .local v0, "var4":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$SavedState;
    invoke-virtual {v0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, p1, p2, v1}, Lcom/samsung/android/ui/appbar/HeaderBehavior;->onRestoreInstanceState(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 1250
    iget v1, v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$SavedState;->firstVisibleChildIndex:I

    iput v1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->offsetToChildIndexOnLayout:I

    .line 1251
    iget v1, v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$SavedState;->firstVisibleChildPercentageShown:F

    iput v1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->offsetToChildIndexOnLayoutPerc:F

    .line 1252
    iget-boolean v1, v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    iput-boolean v1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->offsetToChildIndexOnLayoutIsMinHeight:Z

    .line 1253
    .end local v0    # "var4":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$SavedState;
    goto :goto_0

    .line 1254
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/ui/appbar/HeaderBehavior;->onRestoreInstanceState(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 1255
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->offsetToChildIndexOnLayout:I

    .line 1258
    :goto_0
    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 0

    .line 856
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    check-cast p2, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->onSaveInstanceState(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public onSaveInstanceState(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;)Landroid/os/Parcelable;
    .locals 10
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TT;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .line 1261
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    .local p2, "var2":Lcom/samsung/android/ui/appbar/SeslAppBarLayout;, "TT;"
    invoke-super {p0, p1, p2}, Lcom/samsung/android/ui/appbar/HeaderBehavior;->onSaveInstanceState(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1262
    .local v0, "var3":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->getTopAndBottomOffset()I

    move-result v1

    .line 1263
    .local v1, "var4":I
    invoke-virtual {p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getChildCount()I

    move-result v2

    .line 1264
    .local v2, "var5":I
    const/4 v3, 0x0

    .line 1266
    .local v3, "var6":Z
    const/4 v4, 0x0

    .local v4, "var7":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 1267
    invoke-virtual {p2, v4}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1268
    .local v5, "var9":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    add-int/2addr v6, v1

    .line 1269
    .local v6, "var8":I
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    add-int/2addr v7, v1

    if-gtz v7, :cond_1

    if-ltz v6, :cond_1

    .line 1270
    new-instance v7, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$SavedState;

    invoke-direct {v7, v0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1271
    .local v7, "var10":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$SavedState;
    iput v4, v7, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$SavedState;->firstVisibleChildIndex:I

    .line 1272
    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v8

    invoke-virtual {p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getTopInset()I

    move-result v9

    add-int/2addr v8, v9

    if-ne v6, v8, :cond_0

    .line 1273
    const/4 v3, 0x1

    .line 1276
    :cond_0
    iput-boolean v3, v7, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    .line 1277
    int-to-float v8, v6

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, v7, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$SavedState;->firstVisibleChildPercentageShown:F

    .line 1278
    return-object v7

    .line 1266
    .end local v5    # "var9":Landroid/view/View;
    .end local v6    # "var8":I
    .end local v7    # "var10":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$SavedState;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1282
    .end local v4    # "var7":I
    :cond_2
    return-object v0
.end method

.method public bridge synthetic onStartNestedScroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 7

    .line 856
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->onStartNestedScroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public onStartNestedScroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 5
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # Landroid/view/View;
    .param p4, "var4"    # Landroid/view/View;
    .param p5, "var5"    # I
    .param p6, "var6"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    .line 1287
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    .local p2, "var2":Lcom/samsung/android/ui/appbar/SeslAppBarLayout;, "TT;"
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->isLiftOnScroll()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->canScrollChildren(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1290
    :cond_0
    const/4 v0, 0x1

    .local v0, "var7":Z
    goto :goto_1

    .line 1288
    .end local v0    # "var7":Z
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 1293
    .restart local v0    # "var7":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 1294
    iget-object v1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    .line 1295
    .local v1, "var9":Landroid/animation/ValueAnimator;
    if-eqz v1, :cond_2

    .line 1296
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1300
    .end local v1    # "var9":Landroid/animation/ValueAnimator;
    :cond_2
    iget-boolean v1, p2, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mLifted:Z

    if-eqz v1, :cond_3

    .line 1301
    invoke-virtual {p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getTotalScrollRange()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 1302
    .local v1, "var8":F
    sget v2, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mAppBarHeight:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    .line 1303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1304
    .local v2, "var10":Ljava/lang/StringBuilder;
    const-string v3, "CollapsedHeight is bigger than AppBarHeight :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1305
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1306
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Sesl_AppBarLayout"

    invoke-static {v4, v3}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    sput v1, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mAppBarHeight:F

    .line 1311
    .end local v1    # "var8":F
    .end local v2    # "var10":Ljava/lang/StringBuilder;
    :cond_3
    invoke-virtual {p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getBottom()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mAppBarHeight:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    .line 1312
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mLifted:Z

    .line 1313
    iput-boolean v1, p2, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mLifted:Z

    .line 1314
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mDiffY_Touch:F

    goto :goto_2

    .line 1316
    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mLifted:Z

    .line 1317
    iput-boolean v1, p2, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mLifted:Z

    .line 1320
    :goto_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 1321
    iput p6, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->lastStartedType:I

    .line 1322
    return v0
.end method

.method public bridge synthetic onStopNestedScroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 856
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    check-cast p2, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->onStopNestedScroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public onStopNestedScroll(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;Landroid/view/View;I)V
    .locals 3
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # Landroid/view/View;
    .param p4, "var4"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 1326
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    .local p2, "var2":Lcom/samsung/android/ui/appbar/SeslAppBarLayout;, "TT;"
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->getLastInterceptTouchEventEvent()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->getLastInterceptTouchEventEvent()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->getLastTouchEventEvent()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->getLastTouchEventEvent()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1327
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->snapToChildIfNeeded(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;)V

    .line 1330
    :cond_1
    iget v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->lastStartedType:I

    if-eqz v0, :cond_2

    if-ne p4, v2, :cond_4

    .line 1331
    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->isLiftOnScroll()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1332
    invoke-virtual {p2, p3}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->shouldLift(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setLiftedState(Z)Z

    .line 1335
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsScrollHold:Z

    if-eqz v0, :cond_4

    .line 1336
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsScrollHold:Z

    .line 1340
    :cond_4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 1341
    return-void
.end method

.method public bridge synthetic onTouchEvent(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 856
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    check-cast p2, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->onTouchEvent(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TT;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 1344
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    .local p2, "var2":Lcom/samsung/android/ui/appbar/SeslAppBarLayout;, "TT;"
    iget v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mTouchSlop:I

    if-gez v0, :cond_0

    .line 1345
    invoke-virtual {p1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mTouchSlop:I

    .line 1348
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1349
    .local v0, "var4":I
    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 1350
    const/4 v2, 0x1

    .line 1352
    .local v2, "var5":Z
    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    .line 1353
    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    .line 1354
    if-eqz p3, :cond_1

    const/16 v3, 0x2002

    invoke-static {p3, v3}, Landroidx/core/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1355
    :cond_1
    const/4 v2, 0x0

    .line 1358
    :cond_2
    iput-boolean v2, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mToolisMouse:Z

    .line 1359
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1360
    .local v3, "var6":F
    iget v4, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mLastMotionY_Touch:F

    .line 1361
    .local v4, "var7":F
    sub-float v5, v3, v4

    cmpl-float v1, v5, v1

    if-eqz v1, :cond_3

    .line 1362
    sub-float v1, v3, v4

    iput v1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mDiffY_Touch:F

    .line 1365
    :cond_3
    iget v1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mDiffY_Touch:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v5, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v1, v1, v5

    if-lez v1, :cond_4

    .line 1366
    iput v3, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mLastMotionY_Touch:F

    .line 1369
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/ui/appbar/HeaderBehavior;->onTouchEvent(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1372
    .end local v3    # "var6":F
    .end local v4    # "var7":F
    :cond_5
    const/4 v4, 0x3

    if-eq v0, v4, :cond_6

    .line 1373
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/ui/appbar/HeaderBehavior;->onTouchEvent(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1377
    :cond_6
    iget v4, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mDiffY_Touch:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x41a80000    # 21.0f

    cmpl-float v4, v4, v5

    const/4 v5, 0x0

    if-lez v4, :cond_8

    .line 1378
    iget v4, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mDiffY_Touch:F

    .line 1379
    .local v4, "var6":F
    cmpg-float v6, v4, v1

    if-gez v6, :cond_7

    .line 1380
    iput-boolean v3, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsFlingScrollUp:Z

    .line 1381
    iput-boolean v5, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsFlingScrollDown:Z

    goto :goto_0

    .line 1382
    :cond_7
    cmpl-float v1, v4, v1

    if-lez v1, :cond_9

    .line 1383
    iput-boolean v5, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsFlingScrollUp:Z

    .line 1384
    iput-boolean v3, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsFlingScrollDown:Z

    goto :goto_0

    .line 1387
    .end local v4    # "var6":F
    :cond_8
    iput v1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->touchX:F

    .line 1388
    iput v1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->touchY:F

    .line 1389
    iput-boolean v5, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsFlingScrollUp:Z

    .line 1390
    iput-boolean v5, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsFlingScrollDown:Z

    .line 1391
    iput v1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mLastMotionY_Touch:F

    .line 1394
    :cond_9
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->snapToChildIfNeeded(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;)V

    .line 1395
    .end local v2    # "var5":Z
    goto :goto_1

    .line 1396
    :cond_a
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->touchX:F

    .line 1397
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->touchY:F

    .line 1398
    iput v2, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mLastMotionY_Touch:F

    .line 1399
    iput v1, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mDiffY_Touch:F

    .line 1402
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/ui/appbar/HeaderBehavior;->onTouchEvent(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public bridge synthetic setHeaderTopBottomOffset(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Landroid/view/View;III)I
    .locals 6

    .line 856
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->setHeaderTopBottomOffset(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;III)I

    move-result p1

    return p1
.end method

.method public setHeaderTopBottomOffset(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;III)I
    .locals 10
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TT;III)I"
        }
    .end annotation

    .line 1406
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    .local p2, "var2":Lcom/samsung/android/ui/appbar/SeslAppBarLayout;, "TT;"
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    .line 1407
    .local v0, "var6":I
    const/4 v1, 0x0

    .line 1408
    .local v1, "var7":B
    if-eqz p4, :cond_3

    if-lt v0, p4, :cond_3

    if-gt v0, p5, :cond_3

    .line 1409
    invoke-static {p3, p4, p5}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p4

    .line 1410
    move p3, v1

    .line 1411
    if-eq v0, p4, :cond_4

    .line 1412
    invoke-virtual {p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->hasChildWithInterpolator()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1413
    invoke-virtual {p0, p2, p4}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->interpolateOffset(Lcom/samsung/android/ui/appbar/SeslAppBarLayout;I)I

    move-result p3

    goto :goto_0

    .line 1415
    :cond_0
    move p3, p4

    .line 1418
    :goto_0
    invoke-virtual {p0, p3}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->setTopAndBottomOffset(I)Z

    move-result v8

    .line 1419
    .local v8, "var8":Z
    sub-int p5, v0, p4

    .line 1420
    sub-int v2, p4, p3

    iput v2, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->offsetDelta:I

    .line 1421
    if-nez v8, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->hasChildWithInterpolator()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1422
    invoke-virtual {p1, p2}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    .line 1425
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->getTopAndBottomOffset()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->dispatchOffsetUpdates(I)V

    .line 1427
    if-ge p4, v0, :cond_2

    .line 1428
    const/4 v2, -0x1

    move v9, v2

    .local v2, "var9":B
    goto :goto_1

    .line 1430
    .end local v2    # "var9":B
    :cond_2
    const/4 v2, 0x1

    move v9, v2

    .line 1433
    .local v9, "var9":B
    :goto_1
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move v6, v9

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->updateAppBarLayoutDrawableState(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;IIZ)V

    .line 1434
    move p3, p5

    .line 1435
    .end local v8    # "var8":Z
    .end local v9    # "var9":B
    goto :goto_2

    .line 1437
    :cond_3
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->offsetDelta:I

    .line 1438
    move p3, v1

    .line 1441
    :cond_4
    :goto_2
    return p3
.end method

.method public final shouldJumpElevationState(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;)Z
    .locals 6
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TT;)Z"
        }
    .end annotation

    .line 1445
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    .local p2, "var2":Lcom/samsung/android/ui/appbar/SeslAppBarLayout;, "TT;"
    invoke-virtual {p1, p2}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getDependents(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 1446
    .local v0, "var6":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1447
    .local v1, "var3":I
    const/4 v2, 0x0

    .line 1449
    .local v2, "var4":Z
    const/4 v3, 0x0

    .local v3, "var5":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 1450
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;

    invoke-virtual {v4}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$LayoutParams;->getBehavior()Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;

    move-result-object v4

    .line 1451
    .local v4, "var7":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    instance-of v5, v4, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$ScrollingViewBehavior;

    if-eqz v5, :cond_1

    .line 1452
    move-object v5, v4

    check-cast v5, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$ScrollingViewBehavior;

    invoke-virtual {v5}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$ScrollingViewBehavior;->getOverlayTop()I

    move-result v5

    if-eqz v5, :cond_0

    .line 1453
    const/4 v2, 0x1

    .line 1456
    :cond_0
    return v2

    .line 1449
    .end local v4    # "var7":Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$Behavior;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1460
    .end local v3    # "var5":I
    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method public final snapToChildIfNeeded(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;)V
    .locals 21
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TT;)V"
        }
    .end annotation

    .line 1464
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    .local p2, "var2":Lcom/samsung/android/ui/appbar/SeslAppBarLayout;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v3

    .line 1465
    .local v3, "var3":I
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->getChildIndexOnOffset(Lcom/samsung/android/ui/appbar/SeslAppBarLayout;I)I

    move-result v4

    .line 1466
    .local v4, "var4":I
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1467
    .local v6, "var5":Landroid/view/View;
    if-ltz v4, :cond_11

    .line 1468
    invoke-virtual {v2, v4}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1469
    .local v7, "var6":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;

    .line 1470
    .local v8, "var7":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;
    invoke-virtual {v8}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v9

    .line 1471
    .local v9, "var8":I
    and-int/lit16 v10, v9, 0x1000

    const/16 v11, 0x1000

    if-ne v10, v11, :cond_0

    .line 1472
    return-void

    .line 1475
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v10

    neg-int v10, v10

    .line 1476
    .local v10, "var9":I
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    neg-int v11, v11

    .line 1477
    .local v11, "var10":I
    move v12, v11

    .line 1478
    .local v12, "var11":I
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getChildCount()I

    move-result v13

    sub-int/2addr v13, v5

    if-ne v4, v13, :cond_1

    .line 1479
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getTopInset()I

    move-result v5

    add-int v12, v11, v5

    .line 1483
    :cond_1
    const/4 v5, 0x2

    invoke-static {v9, v5}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->checkFlag(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1484
    invoke-static {v7}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v5

    add-int/2addr v5, v12

    .line 1485
    .end local v4    # "var4":I
    .local v5, "var4":I
    move v4, v10

    .local v4, "var12":I
    goto :goto_0

    .line 1487
    .end local v5    # "var4":I
    .local v4, "var4":I
    :cond_2
    move v5, v10

    .line 1488
    .local v5, "var12":I
    move v4, v12

    .line 1489
    const/4 v13, 0x5

    invoke-static {v9, v13}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->checkFlag(II)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1490
    invoke-static {v7}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v13

    add-int v11, v13, v12

    .line 1491
    if-ge v3, v11, :cond_3

    .line 1492
    move v5, v11

    .line 1493
    move v4, v12

    move/from16 v20, v5

    move v5, v4

    move/from16 v4, v20

    goto :goto_0

    .line 1495
    :cond_3
    move v4, v11

    .line 1496
    move v5, v10

    move/from16 v20, v5

    move v5, v4

    move/from16 v4, v20

    goto :goto_0

    .line 1489
    :cond_4
    move/from16 v20, v5

    move v5, v4

    move/from16 v4, v20

    .line 1501
    .local v4, "var12":I
    .local v5, "var4":I
    :goto_0
    move v11, v4

    .line 1502
    move v12, v5

    .line 1503
    const/16 v13, 0x20

    invoke-static {v9, v13}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->checkFlag(II)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1504
    iget v13, v8, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;->topMargin:I

    add-int v11, v4, v13

    .line 1505
    iget v13, v8, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;->bottomMargin:I

    sub-int v12, v5, v13

    .line 1510
    :cond_5
    int-to-double v13, v3

    .line 1511
    .local v13, "var13":D
    add-int v15, v12, v11

    move/from16 v16, v3

    move/from16 v17, v4

    .end local v3    # "var3":I
    .end local v4    # "var12":I
    .local v16, "var3":I
    .local v17, "var12":I
    int-to-double v3, v15

    .line 1512
    .local v3, "var15":D
    iget-boolean v15, v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mLifted:Z

    if-eqz v15, :cond_6

    .line 1513
    const-wide v18, 0x3fe0a3d70a3d70a4L    # 0.52

    mul-double v18, v18, v3

    cmpl-double v15, v13, v18

    if-ltz v15, :cond_7

    .line 1514
    goto :goto_1

    .line 1516
    :cond_6
    const-wide v18, 0x3fdb851eb851eb85L    # 0.43

    mul-double v18, v18, v3

    cmpl-double v15, v13, v18

    if-ltz v15, :cond_7

    .line 1517
    nop

    .line 1524
    .end local v3    # "var15":D
    .end local v13    # "var13":D
    :goto_1
    move v3, v11

    .end local v5    # "var4":I
    .local v3, "var4":I
    goto :goto_2

    .line 1520
    .local v3, "var15":D
    .restart local v5    # "var4":I
    .restart local v13    # "var13":D
    :cond_7
    move v5, v12

    .line 1521
    move v3, v5

    .line 1528
    .end local v5    # "var4":I
    .end local v13    # "var13":D
    .local v3, "var4":I
    :goto_2
    invoke-virtual {v0, v2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->isScrollHoldMode(Lcom/samsung/android/ui/appbar/SeslAppBarLayout;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_c

    .line 1529
    iget-boolean v4, v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsFlingScrollUp:Z

    if-eqz v4, :cond_8

    .line 1530
    iput-boolean v5, v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsFlingScrollUp:Z

    .line 1531
    iput-boolean v5, v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsFlingScrollDown:Z

    .line 1532
    move v3, v12

    .line 1535
    :cond_8
    move v4, v3

    .line 1536
    .end local v12    # "var11":I
    .local v4, "var11":I
    iget-boolean v12, v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsFlingScrollDown:Z

    if-nez v12, :cond_9

    .line 1537
    goto :goto_4

    .line 1540
    :cond_9
    move v4, v3

    .line 1541
    if-nez v6, :cond_a

    .line 1542
    goto :goto_4

    .line 1545
    :cond_a
    move v4, v3

    .line 1546
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v12

    int-to-float v12, v12

    sget v13, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mAppBarHeight:F

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_b

    .line 1547
    goto :goto_4

    .line 1550
    :cond_b
    iput-boolean v5, v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsFlingScrollDown:Z

    goto :goto_3

    .line 1552
    .end local v4    # "var11":I
    .restart local v12    # "var11":I
    :cond_c
    iget-boolean v4, v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsFlingScrollUp:Z

    if-eqz v4, :cond_d

    .line 1553
    iput-boolean v5, v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsFlingScrollUp:Z

    .line 1554
    iput-boolean v5, v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsFlingScrollDown:Z

    .line 1555
    move v3, v12

    .line 1558
    :cond_d
    move v4, v3

    .line 1559
    .end local v12    # "var11":I
    .restart local v4    # "var11":I
    iget-boolean v12, v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsFlingScrollDown:Z

    if-nez v12, :cond_e

    .line 1560
    goto :goto_4

    .line 1563
    :cond_e
    move v4, v3

    .line 1564
    if-nez v6, :cond_f

    .line 1565
    goto :goto_4

    .line 1568
    :cond_f
    move v4, v3

    .line 1569
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v12

    int-to-float v12, v12

    sget v13, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->mAppBarHeight:F

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_10

    .line 1570
    goto :goto_4

    .line 1573
    :cond_10
    iput-boolean v5, v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->mIsFlingScrollDown:Z

    .line 1576
    :goto_3
    move v4, v11

    .line 1579
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getTotalScrollRange()I

    move-result v12

    neg-int v12, v12

    invoke-static {v4, v12, v5}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v5

    const/4 v12, 0x0

    invoke-virtual {v0, v1, v2, v5, v12}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->animateOffsetTo(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;IF)V

    move v4, v3

    goto :goto_5

    .line 1467
    .end local v7    # "var6":Landroid/view/View;
    .end local v8    # "var7":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;
    .end local v9    # "var8":I
    .end local v10    # "var9":I
    .end local v11    # "var10":I
    .end local v16    # "var3":I
    .end local v17    # "var12":I
    .local v3, "var3":I
    .local v4, "var4":I
    :cond_11
    move/from16 v16, v3

    .line 1582
    .end local v3    # "var3":I
    .restart local v16    # "var3":I
    :goto_5
    return-void
.end method

.method public final stopNestedScrollIfNeeded(ILcom/samsung/android/ui/appbar/SeslAppBarLayout;Landroid/view/View;I)V
    .locals 2
    .param p1, "var1"    # I
    .param p3, "var3"    # Landroid/view/View;
    .param p4, "var4"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 1586
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    .local p2, "var2":Lcom/samsung/android/ui/appbar/SeslAppBarLayout;, "TT;"
    const/4 v0, 0x1

    if-ne p4, v0, :cond_2

    .line 1587
    invoke-virtual {p0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result p4

    .line 1588
    if-gez p1, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    if-lez p1, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getDownNestedScrollRange()I

    move-result v1

    neg-int v1, v1

    if-ne p4, v1, :cond_2

    .line 1589
    :cond_1
    invoke-static {p3, v0}, Landroidx/core/view/ViewCompat;->stopNestedScroll(Landroid/view/View;I)V

    .line 1593
    :cond_2
    return-void
.end method

.method public final updateAppBarLayoutDrawableState(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;IIZ)V
    .locals 8
    .param p1, "var1"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;",
            "TT;IIZ)V"
        }
    .end annotation

    .line 1596
    .local p0, "this":Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;, "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior<TT;>;"
    .local p2, "var2":Lcom/samsung/android/ui/appbar/SeslAppBarLayout;, "TT;"
    invoke-static {p2, p3}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->getAppBarChildOnOffset(Lcom/samsung/android/ui/appbar/SeslAppBarLayout;I)Landroid/view/View;

    move-result-object v0

    .line 1597
    .local v0, "var6":Landroid/view/View;
    if-eqz v0, :cond_6

    .line 1598
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;

    invoke-virtual {v1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v1

    .line 1599
    .local v1, "var7":I
    const/4 v2, 0x0

    .line 1600
    .local v2, "var8":Z
    move v3, v2

    .line 1601
    .local v3, "var9":Z
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_3

    .line 1603
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v4

    .line 1604
    .local v4, "var10":I
    if-lez p4, :cond_0

    and-int/lit8 v5, v1, 0xc

    if-eqz v5, :cond_0

    .line 1605
    move v3, v2

    .line 1606
    neg-int v5, p3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getTopInset()I

    move-result v7

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_2

    .line 1607
    goto :goto_0

    .line 1610
    :cond_0
    move v3, v2

    .line 1611
    and-int/lit8 v5, v1, 0x2

    if-nez v5, :cond_1

    .line 1612
    goto :goto_0

    .line 1615
    :cond_1
    move v3, v2

    .line 1616
    neg-int v5, p3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getTopInset()I

    move-result v7

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_2

    .line 1617
    goto :goto_0

    .line 1621
    :cond_2
    const/4 v3, 0x1

    .line 1625
    .end local v4    # "var10":I
    :cond_3
    :goto_0
    invoke-virtual {p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->isLiftOnScroll()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1626
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->findFirstScrollingChild(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->shouldLift(Landroid/view/View;)Z

    move-result v3

    .line 1629
    :cond_4
    invoke-virtual {p2, v3}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->setLiftedState(Z)Z

    move-result v3

    .line 1630
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_6

    if-nez p5, :cond_5

    if-eqz v3, :cond_6

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;->shouldJumpElevationState(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;Lcom/samsung/android/ui/appbar/SeslAppBarLayout;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1631
    :cond_5
    invoke-virtual {p2}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->jumpDrawablesToCurrentState()V

    .line 1635
    .end local v1    # "var7":I
    .end local v2    # "var8":Z
    .end local v3    # "var9":Z
    :cond_6
    return-void
.end method
