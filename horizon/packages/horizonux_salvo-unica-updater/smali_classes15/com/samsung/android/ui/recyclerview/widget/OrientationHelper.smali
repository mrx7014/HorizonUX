.class public abstract Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;
.super Ljava/lang/Object;
.source "OrientationHelper.java"


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INVALID_SIZE:I = -0x80000000

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mLastTotalSpace:I

.field protected final mLayoutManager:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

.field final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;)V
    .locals 1
    .param p1, "layoutManager"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->mLastTotalSpace:I

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 62
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->mLayoutManager:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;
    .param p2, "x1"    # Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper$1;

    .line 21
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;)V

    return-void
.end method

.method public static createHorizontalHelper(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;)Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;
    .locals 1
    .param p0, "layoutManager"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    .line 92
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper$1;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;)V

    return-object v0
.end method

.method public static createOrientationHelper(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;I)Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;
    .locals 2
    .param p0, "layoutManager"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;
    .param p1, "orientation"    # I

    .line 81
    packed-switch p1, :pswitch_data_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :pswitch_0
    invoke-static {p0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->createVerticalHelper(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;)Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    move-result-object v0

    return-object v0

    .line 83
    :pswitch_1
    invoke-static {p0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;)Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createVerticalHelper(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;)Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;
    .locals 1
    .param p0, "layoutManager"    # Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    .line 175
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper$2;-><init>(Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;)V

    return-object v0
.end method


# virtual methods
.method public abstract getDecoratedEnd(Landroid/view/View;)I
.end method

.method public abstract getDecoratedMeasurement(Landroid/view/View;)I
.end method

.method public abstract getDecoratedMeasurementInOther(Landroid/view/View;)I
.end method

.method public abstract getDecoratedStart(Landroid/view/View;)I
.end method

.method public abstract getEnd()I
.end method

.method public abstract getEndAfterPadding()I
.end method

.method public abstract getEndPadding()I
.end method

.method public getLayoutManager()Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->mLayoutManager:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$LayoutManager;

    return-object v0
.end method

.method public abstract getMode()I
.end method

.method public abstract getModeInOther()I
.end method

.method public abstract getStartAfterPadding()I
.end method

.method public abstract getTotalSpace()I
.end method

.method public getTotalSpaceChange()I
    .locals 2

    .line 74
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->mLastTotalSpace:I

    const/high16 v1, -0x80000000

    if-ne v1, v0, :cond_0

    .line 75
    const/4 v0, 0x0

    return v0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->mLastTotalSpace:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public abstract getTransformedEndWithDecoration(Landroid/view/View;)I
.end method

.method public abstract getTransformedStartWithDecoration(Landroid/view/View;)I
.end method

.method public abstract offsetChild(Landroid/view/View;I)V
.end method

.method public abstract offsetChildren(I)V
.end method

.method public onLayoutComplete()V
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->mLastTotalSpace:I

    .line 71
    return-void
.end method
