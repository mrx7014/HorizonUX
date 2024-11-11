.class Lcom/samsung/android/ui/recyclerview/widget/DiffUtil$Range;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Range"
.end annotation


# instance fields
.field newListEnd:I

.field newListStart:I

.field oldListEnd:I

.field oldListStart:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "oldListStart"    # I
    .param p2, "oldListEnd"    # I
    .param p3, "newListStart"    # I
    .param p4, "newListEnd"    # I

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 232
    iput p2, p0, Lcom/samsung/android/ui/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 233
    iput p3, p0, Lcom/samsung/android/ui/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 234
    iput p4, p0, Lcom/samsung/android/ui/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 235
    return-void
.end method
