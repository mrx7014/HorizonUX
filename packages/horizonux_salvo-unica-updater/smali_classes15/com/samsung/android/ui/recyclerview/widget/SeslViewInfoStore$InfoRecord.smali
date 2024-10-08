.class Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;
.super Ljava/lang/Object;
.source "SeslViewInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InfoRecord"
.end annotation


# static fields
.field static final FLAG_APPEAR:I = 0x2

.field static final FLAG_APPEAR_AND_DISAPPEAR:I = 0x3

.field static final FLAG_APPEAR_PRE_AND_POST:I = 0xe

.field static final FLAG_DISAPPEARED:I = 0x1

.field static final FLAG_POST:I = 0x8

.field static final FLAG_PRE:I = 0x4

.field static final FLAG_PRE_AND_POST:I = 0xc

.field static sPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field flags:I

.field postInfo:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

.field preInfo:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 210
    new-instance v0, Landroidx/core/util/Pools$SimplePool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    sput-object v0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->sPool:Landroidx/core/util/Pools$Pool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static drainCache()V
    .locals 1

    .line 227
    :goto_0
    sget-object v0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->sPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    return-void
.end method

.method static obtain()Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;
    .locals 2

    .line 215
    sget-object v0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->sPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;

    .line 216
    .local v0, "record":Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;
    if-nez v0, :cond_0

    new-instance v1, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;

    invoke-direct {v1}, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;-><init>()V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method static recycle(Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;)V
    .locals 1
    .param p0, "record"    # Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;

    .line 220
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->flags:I

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->preInfo:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    .line 222
    iput-object v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->postInfo:Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView$ItemAnimator$ItemHolderInfo;

    .line 223
    sget-object v0, Lcom/samsung/android/ui/recyclerview/widget/SeslViewInfoStore$InfoRecord;->sPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 224
    return-void
.end method
