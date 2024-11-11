.class Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$OffsetUpdateListener;
.super Ljava/lang/Object;
.source "SeslCollapsingToolbarLayout.java"

# interfaces
.implements Lcom/samsung/android/ui/appbar/SeslAppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffsetUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;)V
    .locals 3

    .line 1020
    iput-object p1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1021
    invoke-virtual {p1}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    const v1, 0x7f07019d

    if-eqz v0, :cond_1

    .line 1022
    invoke-virtual {p1}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;

    .line 1023
    .local v0, "abl":Lcom/samsung/android/ui/appbar/SeslAppBarLayout;
    invoke-virtual {v0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getPaddingBottom()I

    move-result v2

    if-lez v2, :cond_0

    .line 1024
    invoke-virtual {p1}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, v1}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->access$002(Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;F)F

    goto :goto_0

    .line 1026
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07019c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, v1}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->access$002(Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;F)F

    .line 1028
    .end local v0    # "abl":Lcom/samsung/android/ui/appbar/SeslAppBarLayout;
    :goto_0
    goto :goto_1

    .line 1029
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->access$002(Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;F)F

    .line 1031
    :goto_1
    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/samsung/android/ui/appbar/SeslAppBarLayout;I)V
    .locals 8
    .param p1, "layout"    # Lcom/samsung/android/ui/appbar/SeslAppBarLayout;
    .param p2, "verticalOffset"    # I

    .line 1035
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1036
    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

    iget-object v0, v0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

    iget-object v0, v0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1038
    .local v0, "insetTop":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

    iput p2, v2, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCurrentOffset:I

    .line 1039
    iget-object v2, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

    invoke-static {v2}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->access$100(Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

    iget v3, v3, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCurrentOffset:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 1041
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

    invoke-virtual {v3}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1042
    iget-object v3, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

    invoke-virtual {v3, v2}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1043
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$LayoutParams;

    .line 1044
    .local v4, "lp":Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$LayoutParams;
    invoke-static {v3}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/samsung/android/ui/appbar/ViewOffsetHelper;

    move-result-object v5

    .line 1046
    .local v5, "offsetHelper":Lcom/samsung/android/ui/appbar/ViewOffsetHelper;
    iget v6, v4, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    packed-switch v6, :pswitch_data_0

    goto :goto_2

    .line 1051
    :pswitch_0
    neg-int v6, p2

    int-to-float v6, v6

    iget v7, v4, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/ui/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    goto :goto_2

    .line 1048
    :pswitch_1
    neg-int v6, p2

    iget-object v7, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

    invoke-virtual {v7, v3}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getMaxOffsetForPinChild(Landroid/view/View;)I

    move-result v7

    invoke-static {v6, v1, v7}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/ui/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    .line 1049
    nop

    .line 1041
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$LayoutParams;
    .end local v5    # "offsetHelper":Lcom/samsung/android/ui/appbar/ViewOffsetHelper;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1056
    .end local v2    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

    invoke-virtual {v1}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->updateScrimVisibility()V

    .line 1058
    iget-object v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

    iget-object v1, v1, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    if-lez v0, :cond_2

    .line 1059
    iget-object v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1062
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

    invoke-static {v1}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->access$200(Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1063
    invoke-virtual {p1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getTop()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1064
    .local v1, "layoutPosition":I
    iget-object v2, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

    invoke-virtual {v2}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e3851eb    # 0.17999999f

    mul-float/2addr v2, v3

    .line 1066
    .local v2, "alphaRange":F
    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v3, v2

    int-to-float v4, v1

    const/4 v5, 0x0

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    const/high16 v4, 0x437f0000    # 255.0f

    sub-float v3, v4, v3

    .line 1068
    .local v3, "titleAlpha":F
    cmpg-float v6, v3, v5

    if-gez v6, :cond_3

    .line 1069
    const/4 v3, 0x0

    goto :goto_3

    .line 1070
    :cond_3
    cmpl-float v6, v3, v4

    if-lez v6, :cond_4

    .line 1071
    const/high16 v3, 0x437f0000    # 255.0f

    .line 1074
    :cond_4
    :goto_3
    iget-object v6, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

    invoke-static {v6}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->access$100(Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;)Landroid/widget/LinearLayout;

    move-result-object v6

    div-float v4, v3, v4

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1076
    invoke-virtual {p1}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout;->getHeight()I

    move-result v4

    iget-object v6, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

    invoke-static {v6}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->access$000(Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;)F

    move-result v6

    float-to-int v6, v6

    if-gt v4, v6, :cond_6

    .line 1077
    iget-object v4, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

    invoke-static {v4}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->access$100(Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_4

    .line 1082
    .end local v1    # "layoutPosition":I
    .end local v2    # "alphaRange":F
    .end local v3    # "titleAlpha":F
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

    invoke-static {v1}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->access$300(Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1083
    iget-object v1, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

    invoke-virtual {v1}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

    invoke-virtual {v2}, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->getMinimumHeight()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    .line 1084
    .local v1, "expandRange":I
    iget-object v2, p0, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;

    iget-object v2, v2, Lcom/samsung/android/ui/appbar/SeslCollapsingToolbarLayout;->mCollapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpansionFraction(F)V

    goto :goto_5

    .line 1082
    .end local v1    # "expandRange":I
    :cond_6
    :goto_4
    nop

    .line 1086
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
