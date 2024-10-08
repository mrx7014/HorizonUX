.class Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnchorInfo"
.end annotation


# instance fields
.field mInvalidateOffsets:Z

.field mLayoutFromEnd:Z

.field mOffset:I

.field mPosition:I

.field mSpanReferenceLines:[I

.field mValid:Z

.field final synthetic this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    .line 2497
    iput-object p1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2498
    invoke-virtual {p0}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 2499
    return-void
.end method


# virtual methods
.method assignCoordinateFromPadding()V
    .locals 1

    .line 2523
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 2524
    return-void
.end method

.method assignCoordinateFromPadding(I)V
    .locals 1
    .param p1, "addedDistance"    # I

    .line 2527
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    .line 2528
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto :goto_0

    .line 2530
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/samsung/android/ui/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 2532
    :goto_0
    return-void
.end method

.method reset()V
    .locals 2

    .line 2502
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 2503
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 2504
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 2505
    iput-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    .line 2506
    iput-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mValid:Z

    .line 2507
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    if-eqz v1, :cond_0

    .line 2508
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 2510
    :cond_0
    return-void
.end method

.method saveSpanReferenceLines([Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;)V
    .locals 5
    .param p1, "spans"    # [Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 2513
    array-length v0, p1

    .line 2514
    .local v0, "spanCount":I
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    if-eqz v1, :cond_0

    array-length v1, v1

    if-ge v1, v0, :cond_1

    .line 2515
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->this$0:Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    .line 2517
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2518
    iget-object v2, p0, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    aget-object v3, p1, v1

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Lcom/samsung/android/ui/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v3

    aput v3, v2, v1

    .line 2517
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2520
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
