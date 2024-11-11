.class Lcom/mesalabs/ten/update/ota/ROMUpdate$MD5Check;
.super Landroid/os/AsyncTask;
.source "ROMUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mesalabs/ten/update/ota/ROMUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MD5Check"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActivity:Lcom/mesalabs/ten/update/activity/home/MainActivity;

.field private mDPV:Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;

.field private mUpdatePkg:Ljava/io/File;


# direct methods
.method private constructor <init>(Lcom/mesalabs/ten/update/activity/home/MainActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/mesalabs/ten/update/activity/home/MainActivity;

    .line 337
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 332
    const-string v0, "MD5Check"

    iput-object v0, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$MD5Check;->TAG:Ljava/lang/String;

    .line 338
    iput-object p1, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$MD5Check;->mActivity:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    .line 339
    return-void
.end method

.method synthetic constructor <init>(Lcom/mesalabs/ten/update/activity/home/MainActivity;Lcom/mesalabs/ten/update/ota/ROMUpdate$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mesalabs/ten/update/activity/home/MainActivity;
    .param p2, "x1"    # Lcom/mesalabs/ten/update/ota/ROMUpdate$1;

    .line 331
    invoke-direct {p0, p1}, Lcom/mesalabs/ten/update/ota/ROMUpdate$MD5Check;-><init>(Lcom/mesalabs/ten/update/activity/home/MainActivity;)V

    return-void
.end method

.method private checkMD5(Ljava/lang/String;Ljava/io/File;)Z
    .locals 4
    .param p1, "md5"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .line 383
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "MD5Check"

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    invoke-virtual {p0, p2}, Lcom/mesalabs/ten/update/ota/ROMUpdate$MD5Check;->calculateMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "calculatedDigest":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 390
    const-string v3, "calculatedDigest null"

    invoke-static {v2, v3}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    return v1

    .line 394
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calculated digest: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", Manifest digest: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 384
    .end local v0    # "calculatedDigest":Ljava/lang/String;
    :cond_2
    :goto_0
    const-string v0, "MD5 string empty or updateFile null"

    invoke-static {v2, v0}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    return v1
.end method


# virtual methods
.method calculateMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 11
    .param p1, "updateFile"    # Ljava/io/File;

    .line 402
    const-string v0, "MD5Check"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4

    .line 406
    .local v2, "digest":Ljava/security/MessageDigest;
    nop

    .line 410
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v1, v3

    .line 414
    .local v1, "is":Ljava/io/InputStream;
    nop

    .line 416
    const/16 v3, 0x2000

    new-array v3, v3, [B

    .line 419
    .local v3, "buffer":[B
    :goto_0
    :try_start_2
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "read":I
    const/4 v6, 0x0

    if-lez v4, :cond_0

    .line 420
    invoke-virtual {v2, v3, v6, v5}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 422
    :cond_0
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 423
    .local v4, "md5sum":[B
    new-instance v7, Ljava/math/BigInteger;

    const/4 v8, 0x1

    invoke-direct {v7, v8, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 424
    .local v7, "bigInt":Ljava/math/BigInteger;
    const/16 v9, 0x10

    invoke-virtual {v7, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 426
    .local v9, "output":Ljava/lang/String;
    const-string v10, "%32s"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v9, v8, v6

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x20

    const/16 v10, 0x30

    invoke-virtual {v6, v8, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 427
    .end local v9    # "output":Ljava/lang/String;
    .local v6, "output":Ljava/lang/String;
    nop

    .line 432
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 435
    goto :goto_1

    .line 433
    :catch_0
    move-exception v8

    .line 434
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    .end local v8    # "e":Ljava/io/IOException;
    :goto_1
    return-object v6

    .line 431
    .end local v4    # "md5sum":[B
    .end local v5    # "read":I
    .end local v6    # "output":Ljava/lang/String;
    .end local v7    # "bigInt":Ljava/math/BigInteger;
    :catchall_0
    move-exception v4

    goto :goto_2

    .line 428
    :catch_1
    move-exception v4

    .line 429
    .local v4, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v5, Lcom/mesalabs/cerberus/utils/CerberusException;

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/mesalabs/cerberus/utils/CerberusException;-><init>(Ljava/lang/String;)V

    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "buffer":[B
    .end local p1    # "updateFile":Ljava/io/File;
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 432
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "digest":Ljava/security/MessageDigest;
    .restart local v3    # "buffer":[B
    .restart local p1    # "updateFile":Ljava/io/File;
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 435
    goto :goto_3

    .line 433
    :catch_2
    move-exception v5

    .line 434
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    .end local v5    # "e":Ljava/io/IOException;
    :goto_3
    throw v4

    .line 411
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v3    # "buffer":[B
    :catch_3
    move-exception v3

    .line 412
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    return-object v1

    .line 403
    .end local v2    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v2

    .line 404
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return-object v1
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;

    .line 350
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$MD5Check;->mActivity:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-virtual {v1}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->getFullFilePathName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$MD5Check;->mUpdatePkg:Ljava/io/File;

    .line 351
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "md5Remote":Ljava/lang/String;
    iget-object v1, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$MD5Check;->mUpdatePkg:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lcom/mesalabs/ten/update/ota/ROMUpdate$MD5Check;->checkMD5(Ljava/lang/String;Ljava/io/File;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 331
    invoke-virtual {p0, p1}, Lcom/mesalabs/ten/update/ota/ROMUpdate$MD5Check;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 357
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->setIsDownloadOnGoing(Z)V

    .line 358
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$Download;->setDownloadFinished(Z)V

    .line 360
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 361
    invoke-static {}, Lcom/mesalabs/ten/update/TenUpdateApp;->isAppInBackground()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    iget-object v0, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$MD5Check;->mActivity:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-static {v0, v2}, Lcom/mesalabs/ten/update/ota/utils/GeneralUtils;->setupDownloadCompletedNotification(Landroid/content/Context;Z)V

    .line 363
    iget-object v0, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$MD5Check;->mActivity:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    sget v1, Lcom/mesalabs/ten/update/activity/home/MainActivity;->MAIN_PAGE_FRAGMENT:I

    invoke-virtual {v0, v1}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->switchToFragment(I)V

    goto :goto_1

    .line 365
    :cond_0
    iget-object v1, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$MD5Check;->mDPV:Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;

    invoke-virtual {v1}, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->setDownloadCompleteStatus()V

    .line 366
    iget-object v1, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$MD5Check;->mActivity:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-virtual {v1}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->getDownloadFragment()Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;->getPreInstallWarningTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$MD5Check;->mActivity:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-virtual {v0, v2}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->animateBottomInstallButton(Z)V

    goto :goto_1

    .line 370
    :cond_1
    invoke-static {}, Lcom/mesalabs/ten/update/TenUpdateApp;->isAppInBackground()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 371
    iget-object v1, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$MD5Check;->mActivity:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-static {v1, v0}, Lcom/mesalabs/ten/update/ota/utils/GeneralUtils;->setupDownloadCompletedNotification(Landroid/content/Context;Z)V

    goto :goto_0

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$MD5Check;->mActivity:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    const v1, 0x7f0f006a

    invoke-virtual {v0, v1}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 375
    :goto_0
    iget-object v0, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$MD5Check;->mUpdatePkg:Ljava/io/File;

    invoke-static {v0}, Lcom/mesalabs/ten/update/ota/utils/GeneralUtils;->deleteFile(Ljava/io/File;)V

    .line 376
    iget-object v0, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$MD5Check;->mActivity:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    sget v1, Lcom/mesalabs/ten/update/activity/home/MainActivity;->MAIN_PAGE_FRAGMENT:I

    invoke-virtual {v0, v1}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->switchToFragment(I)V

    .line 379
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 380
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 331
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/mesalabs/ten/update/ota/ROMUpdate$MD5Check;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$MD5Check;->mActivity:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    invoke-virtual {v0}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->getDownloadFragment()Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mesalabs/ten/update/fragment/home/DownloadProgressFragment;->getDownloadProgressView()Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;

    move-result-object v0

    iput-object v0, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$MD5Check;->mDPV:Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;

    .line 344
    invoke-virtual {v0}, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->setCheckingMD5Status()V

    .line 345
    iget-object v0, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$MD5Check;->mActivity:Lcom/mesalabs/ten/update/activity/home/MainActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/mesalabs/ten/update/activity/home/MainActivity;->animateBottomDownloadButton(ZZ)V

    .line 346
    return-void
.end method
