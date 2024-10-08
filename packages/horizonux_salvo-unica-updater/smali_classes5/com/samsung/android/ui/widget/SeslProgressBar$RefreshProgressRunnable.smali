.class Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshProgressRunnable;
.super Ljava/lang/Object;
.source "SeslProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/widget/SeslProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshProgressRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/widget/SeslProgressBar;


# direct methods
.method public constructor <init>(Lcom/samsung/android/ui/widget/SeslProgressBar;)V
    .locals 0

    .line 2274
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshProgressRunnable;->this$0:Lcom/samsung/android/ui/widget/SeslProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2275
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 2278
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshProgressRunnable;->this$0:Lcom/samsung/android/ui/widget/SeslProgressBar;

    .line 2279
    .local v0, "var1":Lcom/samsung/android/ui/widget/SeslProgressBar;
    monitor-enter v0

    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 2286
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshProgressRunnable;->this$0:Lcom/samsung/android/ui/widget/SeslProgressBar;

    iget-object v1, v1, Lcom/samsung/android/ui/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2291
    .local v1, "var2":I
    nop

    .line 2293
    const/4 v2, 0x0

    .local v2, "var3":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2295
    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshProgressRunnable;->this$0:Lcom/samsung/android/ui/widget/SeslProgressBar;

    iget-object v3, v3, Lcom/samsung/android/ui/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshData;

    .line 2296
    .local v3, "var4":Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshData;
    iget-object v4, p0, Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshProgressRunnable;->this$0:Lcom/samsung/android/ui/widget/SeslProgressBar;

    iget v5, v3, Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshData;->id:I

    iget v6, v3, Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshData;->progress:I

    iget-boolean v7, v3, Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshData;->fromUser:Z

    const/4 v8, 0x1

    iget-boolean v9, v3, Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshData;->animate:Z

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/ui/widget/SeslProgressBar;->doRefreshProgress(IIZZZ)V

    .line 2297
    invoke-virtual {v3}, Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshData;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2302
    .end local v3    # "var4":Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshData;
    nop

    .line 2293
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2298
    .end local v0    # "var1":Lcom/samsung/android/ui/widget/SeslProgressBar;
    .end local p0    # "this":Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshProgressRunnable;
    :catchall_0
    move-exception v0

    .line 2299
    .local v0, "var23":Ljava/lang/Throwable;
    move-object v3, v0

    .line 2300
    .local v3, "var10000":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 2301
    .local v4, "var10001":Z
    goto :goto_1

    .line 2307
    .end local v2    # "var3":I
    .end local v3    # "var10000":Ljava/lang/Throwable;
    .end local v4    # "var10001":Z
    .local v0, "var1":Lcom/samsung/android/ui/widget/SeslProgressBar;
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshProgressRunnable;->this$0:Lcom/samsung/android/ui/widget/SeslProgressBar;

    iget-object v2, v2, Lcom/samsung/android/ui/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2308
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslProgressBar$RefreshProgressRunnable;->this$0:Lcom/samsung/android/ui/widget/SeslProgressBar;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/samsung/android/ui/widget/SeslProgressBar;->mRefreshIsPosted:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2309
    return-void

    .line 2310
    .end local v0    # "var1":Lcom/samsung/android/ui/widget/SeslProgressBar;
    :catchall_1
    move-exception v0

    .line 2311
    .local v0, "var22":Ljava/lang/Throwable;
    move-object v3, v0

    .line 2312
    .restart local v3    # "var10000":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 2313
    .restart local v4    # "var10001":Z
    goto :goto_1

    .line 2287
    .end local v0    # "var22":Ljava/lang/Throwable;
    .end local v1    # "var2":I
    .end local v3    # "var10000":Ljava/lang/Throwable;
    .end local v4    # "var10001":Z
    :catchall_2
    move-exception v0

    .line 2288
    .local v0, "var24":Ljava/lang/Throwable;
    move-object v3, v0

    .line 2289
    .restart local v3    # "var10000":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 2290
    .restart local v4    # "var10001":Z
    nop

    .line 2318
    .end local v0    # "var24":Ljava/lang/Throwable;
    :goto_1
    move-object v0, v3

    .line 2321
    .local v0, "var25":Ljava/lang/Throwable;
    nop

    .end local v3    # "var10000":Ljava/lang/Throwable;
    .end local v4    # "var10001":Z
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 2322
    .restart local v3    # "var10000":Ljava/lang/Throwable;
    .restart local v4    # "var10001":Z
    :catchall_3
    move-exception v1

    .line 2323
    .local v1, "var21":Ljava/lang/Throwable;
    move-object v3, v1

    .line 2324
    const/4 v4, 0x0

    .line 2325
    goto :goto_1

    .line 2279
    .end local v1    # "var21":Ljava/lang/Throwable;
    .end local v3    # "var10000":Ljava/lang/Throwable;
    .end local v4    # "var10001":Z
    .local v0, "var1":Lcom/samsung/android/ui/widget/SeslProgressBar;
    :catchall_4
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v1
.end method
