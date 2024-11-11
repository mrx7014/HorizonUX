.class public Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutChunkResult;
.super Ljava/lang/Object;
.source "SeslLinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LayoutChunkResult"
.end annotation


# instance fields
.field public mConsumed:I

.field public mFinished:Z

.field public mFocusable:Z

.field public mIgnoreConsumed:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method resetInternal()V
    .locals 1

    .line 1466
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 1467
    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 1468
    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 1469
    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 1470
    return-void
.end method
