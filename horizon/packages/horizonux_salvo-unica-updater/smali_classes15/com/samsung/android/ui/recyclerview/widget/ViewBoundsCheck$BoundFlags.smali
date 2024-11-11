.class Lcom/samsung/android/ui/recyclerview/widget/ViewBoundsCheck$BoundFlags;
.super Ljava/lang/Object;
.source "ViewBoundsCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/ViewBoundsCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BoundFlags"
.end annotation


# instance fields
.field mBoundFlags:I

.field mChildEnd:I

.field mChildStart:I

.field mRvEnd:I

.field mRvStart:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    return-void
.end method


# virtual methods
.method addFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 78
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    .line 79
    return-void
.end method

.method boundsMatch()Z
    .locals 4

    .line 96
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 97
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildStart:I

    iget v3, p0, Lcom/samsung/android/ui/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvStart:I

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/ui/recyclerview/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    move-result v1

    shl-int/2addr v1, v2

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 98
    return v2

    .line 102
    :cond_0
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    and-int/lit8 v1, v0, 0x70

    if-eqz v1, :cond_1

    .line 103
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildStart:I

    iget v3, p0, Lcom/samsung/android/ui/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvEnd:I

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/ui/recyclerview/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 104
    return v2

    .line 108
    :cond_1
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    and-int/lit16 v1, v0, 0x700

    if-eqz v1, :cond_2

    .line 109
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildEnd:I

    iget v3, p0, Lcom/samsung/android/ui/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvStart:I

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/ui/recyclerview/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 110
    return v2

    .line 114
    :cond_2
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    and-int/lit16 v1, v0, 0x7000

    if-eqz v1, :cond_3

    .line 115
    iget v1, p0, Lcom/samsung/android/ui/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildEnd:I

    iget v3, p0, Lcom/samsung/android/ui/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvEnd:I

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/ui/recyclerview/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    move-result v1

    shl-int/lit8 v1, v1, 0xc

    and-int/2addr v0, v1

    if-nez v0, :cond_3

    .line 116
    return v2

    .line 119
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method compare(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 86
    if-le p1, p2, :cond_0

    .line 87
    const/4 v0, 0x1

    return v0

    .line 89
    :cond_0
    if-ne p1, p2, :cond_1

    .line 90
    const/4 v0, 0x2

    return v0

    .line 92
    :cond_1
    const/4 v0, 0x4

    return v0
.end method

.method resetFlags()V
    .locals 1

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    .line 83
    return-void
.end method

.method setBounds(IIII)V
    .locals 0
    .param p1, "rvStart"    # I
    .param p2, "rvEnd"    # I
    .param p3, "childStart"    # I
    .param p4, "childEnd"    # I

    .line 67
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvStart:I

    .line 68
    iput p2, p0, Lcom/samsung/android/ui/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvEnd:I

    .line 69
    iput p3, p0, Lcom/samsung/android/ui/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildStart:I

    .line 70
    iput p4, p0, Lcom/samsung/android/ui/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildEnd:I

    .line 71
    return-void
.end method

.method setFlags(II)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .line 74
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    .line 75
    return-void
.end method
