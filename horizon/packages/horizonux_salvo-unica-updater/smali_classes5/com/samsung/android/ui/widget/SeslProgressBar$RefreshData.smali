.class Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshData;
.super Ljava/lang/Object;
.source "SeslProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/widget/SeslProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefreshData"
.end annotation


# static fields
.field public static final sPool:Landroidx/core/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$SynchronizedPool<",
            "Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public animate:Z

.field public fromUser:Z

.field public id:I

.field public progress:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2245
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshData;->sPool:Landroidx/core/util/Pools$SynchronizedPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2252
    return-void
.end method

.method public static obtain(IIZZ)Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshData;
    .locals 3
    .param p0, "var0"    # I
    .param p1, "var1"    # I
    .param p2, "var2"    # Z
    .param p3, "var3"    # Z

    .line 2255
    sget-object v0, Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshData;->sPool:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroidx/core/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshData;

    .line 2256
    .local v0, "var4":Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshData;
    move-object v1, v0

    .line 2257
    .local v1, "var5":Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshData;
    if-nez v0, :cond_0

    .line 2258
    new-instance v2, Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshData;

    invoke-direct {v2}, Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshData;-><init>()V

    move-object v1, v2

    .line 2261
    :cond_0
    iput p0, v1, Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshData;->id:I

    .line 2262
    iput p1, v1, Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshData;->progress:I

    .line 2263
    iput-boolean p2, v1, Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshData;->fromUser:Z

    .line 2264
    iput-boolean p3, v1, Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshData;->animate:Z

    .line 2265
    return-object v1
.end method


# virtual methods
.method public recycle()V
    .locals 1

    .line 2269
    sget-object v0, Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshData;->sPool:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 2270
    return-void
.end method
