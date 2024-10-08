.class Lcom/mesalabs/ten/update/ota/ROMUpdate$Download$2;
.super Ljava/lang/Object;
.source "ROMUpdate.java"

# interfaces
.implements Lcom/tonyodev/fetch2/FetchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->startDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;


# direct methods
.method constructor <init>(Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;

    .line 222
    iput-object p1, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download$2;->this$0:Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdded(Lcom/tonyodev/fetch2/Download;)V
    .locals 0
    .param p1, "download"    # Lcom/tonyodev/fetch2/Download;

    .line 298
    return-void
.end method

.method public onCancelled(Lcom/tonyodev/fetch2/Download;)V
    .locals 0
    .param p1, "download"    # Lcom/tonyodev/fetch2/Download;

    .line 294
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->clean()V

    .line 295
    return-void
.end method

.method public onCompleted(Lcom/tonyodev/fetch2/Download;)V
    .locals 3
    .param p1, "download"    # Lcom/tonyodev/fetch2/Download;

    .line 289
    new-instance v0, Lcom/mesalabs/ten/update/ota/ROMUpdate$MD5Check;

    iget-object v1, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download$2;->this$0:Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;

    invoke-static {v1}, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->access$300(Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;)Lcom/mesalabs/ten/update/activity/home/MainActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mesalabs/ten/update/ota/ROMUpdate$MD5Check;-><init>(Lcom/mesalabs/ten/update/activity/home/MainActivity;Lcom/mesalabs/ten/update/ota/ROMUpdate$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/mesalabs/ten/update/ota/ROMUpdate$MD5Check;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 290
    return-void
.end method

.method public onDeleted(Lcom/tonyodev/fetch2/Download;)V
    .locals 0
    .param p1, "download"    # Lcom/tonyodev/fetch2/Download;

    .line 285
    return-void
.end method

.method public onDownloadBlockUpdated(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2core/DownloadBlock;I)V
    .locals 0
    .param p1, "download"    # Lcom/tonyodev/fetch2/Download;
    .param p2, "downloadBlock"    # Lcom/tonyodev/fetch2core/DownloadBlock;
    .param p3, "totalBlocks"    # I

    .line 282
    return-void
.end method

.method public onError(Lcom/tonyodev/fetch2/Download;Lcom/tonyodev/fetch2/Error;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "download"    # Lcom/tonyodev/fetch2/Download;
    .param p2, "error"    # Lcom/tonyodev/fetch2/Error;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 278
    iget-object v0, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download$2;->this$0:Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;

    invoke-static {v0}, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->access$300(Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;)Lcom/mesalabs/ten/update/activity/home/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->onErrorROMUpdateDownload()V

    .line 279
    return-void
.end method

.method public onPaused(Lcom/tonyodev/fetch2/Download;)V
    .locals 3
    .param p1, "download"    # Lcom/tonyodev/fetch2/Download;

    .line 271
    iget-object v0, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download$2;->this$0:Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;

    invoke-static {v0}, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->access$300(Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;)Lcom/mesalabs/ten/update/activity/home/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->getDownloadFragment()Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;->getDownloadProgressView()Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;

    move-result-object v0

    .line 272
    .local v0, "dpv":Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->setPausedStatus(Z)V

    .line 273
    iget-object v2, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download$2;->this$0:Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;

    invoke-static {v2}, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->access$300(Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;)Lcom/mesalabs/ten/update/activity/home/MainActivity;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->animateBottomDownloadButton(ZZ)V

    .line 274
    return-void
.end method

.method public onProgress(Lcom/tonyodev/fetch2/Download;JJ)V
    .locals 15
    .param p1, "download"    # Lcom/tonyodev/fetch2/Download;
    .param p2, "etaInMilliSeconds"    # J
    .param p4, "downloadedBytesPerSecond"    # J

    .line 252
    move-object v0, p0

    move-wide/from16 v1, p2

    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->getDownloadID()I

    move-result v3

    invoke-interface/range {p1 .. p1}, Lcom/tonyodev/fetch2/Download;->getId()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 253
    iget-object v3, v0, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download$2;->this$0:Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;

    invoke-static {v3}, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->access$300(Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;)Lcom/mesalabs/ten/update/activity/home/MainActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->getDownloadFragment()Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;->getDownloadProgressView()Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;

    move-result-object v3

    .line 255
    .local v3, "dpv":Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;
    invoke-interface/range {p1 .. p1}, Lcom/tonyodev/fetch2/Download;->getProgress()I

    move-result v4

    .line 256
    .local v4, "progress":I
    if-gez v4, :cond_0

    const/4 v4, 0x0

    .line 257
    :cond_0
    invoke-virtual {v3}, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->getProgress()I

    move-result v5

    const/4 v6, 0x1

    if-ge v4, v5, :cond_1

    .line 258
    iget-object v5, v0, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download$2;->this$0:Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;

    invoke-static {v5}, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->access$300(Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;)Lcom/mesalabs/ten/update/activity/home/MainActivity;

    move-result-object v5

    iget-object v7, v0, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download$2;->this$0:Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;

    invoke-static {v7}, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->access$300(Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;)Lcom/mesalabs/ten/update/activity/home/MainActivity;

    move-result-object v7

    const v8, 0x7f0f0069

    invoke-virtual {v7, v8}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 260
    :cond_1
    invoke-virtual {v3, v4}, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->setProgress(I)V

    .line 262
    iget-object v5, v0, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download$2;->this$0:Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;

    invoke-static {v5}, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->access$300(Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;)Lcom/mesalabs/ten/update/activity/home/MainActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v5

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v1, v2}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v7

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 263
    invoke-virtual {v7, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v9

    sget-object v7, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v11, 0x1

    invoke-virtual {v7, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v13

    rem-long/2addr v9, v13

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v8, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 264
    invoke-virtual {v7, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v9

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v11, v12}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v11

    rem-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v8, v6

    .line 262
    const-string v6, "%02d:%02d:%02d"

    invoke-static {v5, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 265
    .local v5, "hms":Ljava/lang/String;
    invoke-virtual {v3, v5}, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->setTimeLeftText(Ljava/lang/String;)V

    .line 267
    .end local v3    # "dpv":Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;
    .end local v4    # "progress":I
    .end local v5    # "hms":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public onQueued(Lcom/tonyodev/fetch2/Download;Z)V
    .locals 0
    .param p1, "download"    # Lcom/tonyodev/fetch2/Download;
    .param p2, "waitingOnNetwork"    # Z

    .line 248
    return-void
.end method

.method public onRemoved(Lcom/tonyodev/fetch2/Download;)V
    .locals 0
    .param p1, "download"    # Lcom/tonyodev/fetch2/Download;

    .line 245
    return-void
.end method

.method public onResumed(Lcom/tonyodev/fetch2/Download;)V
    .locals 4
    .param p1, "download"    # Lcom/tonyodev/fetch2/Download;

    .line 239
    iget-object v0, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download$2;->this$0:Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;

    invoke-static {v0}, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->access$300(Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;)Lcom/mesalabs/ten/update/activity/home/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->getDownloadFragment()Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;->getDownloadProgressView()Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;

    move-result-object v0

    .line 240
    .local v0, "dpv":Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->setPausedStatus(Z)V

    .line 241
    iget-object v2, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download$2;->this$0:Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;

    invoke-static {v2}, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->access$300(Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;)Lcom/mesalabs/ten/update/activity/home/MainActivity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->animateBottomDownloadButton(ZZ)V

    .line 242
    return-void
.end method

.method public onStarted(Lcom/tonyodev/fetch2/Download;Ljava/util/List;I)V
    .locals 4
    .param p1, "download"    # Lcom/tonyodev/fetch2/Download;
    .param p3, "totalBlocks"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonyodev/fetch2/Download;",
            "Ljava/util/List<",
            "+",
            "Lcom/tonyodev/fetch2core/DownloadBlock;",
            ">;I)V"
        }
    .end annotation

    .line 232
    .local p2, "downloadBlocks":Ljava/util/List;, "Ljava/util/List<+Lcom/tonyodev/fetch2core/DownloadBlock;>;"
    iget-object v0, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download$2;->this$0:Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;

    invoke-static {v0}, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->access$300(Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;)Lcom/mesalabs/ten/update/activity/home/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->getDownloadFragment()Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;->getDownloadProgressView()Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;

    move-result-object v0

    .line 233
    .local v0, "dpv":Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->setWaitingForNetworkStatus(Z)V

    .line 234
    iget-object v2, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download$2;->this$0:Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;

    invoke-static {v2}, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->access$300(Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;)Lcom/mesalabs/ten/update/activity/home/MainActivity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->animateBottomDownloadButton(ZZ)V

    .line 235
    return-void
.end method

.method public onWaitingNetwork(Lcom/tonyodev/fetch2/Download;)V
    .locals 3
    .param p1, "download"    # Lcom/tonyodev/fetch2/Download;

    .line 225
    iget-object v0, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download$2;->this$0:Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;

    invoke-static {v0}, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->access$300(Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;)Lcom/mesalabs/ten/update/activity/home/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->getDownloadFragment()Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;->getDownloadProgressView()Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;

    move-result-object v0

    .line 226
    .local v0, "dpv":Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->setWaitingForNetworkStatus(Z)V

    .line 227
    iget-object v1, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download$2;->this$0:Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;

    invoke-static {v1}, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->access$300(Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;)Lcom/mesalabs/ten/update/activity/home/MainActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->animateBottomDownloadButton(ZZ)V

    .line 228
    return-void
.end method
