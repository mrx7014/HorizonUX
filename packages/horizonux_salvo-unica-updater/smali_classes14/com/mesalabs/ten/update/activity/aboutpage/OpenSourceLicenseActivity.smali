.class public Lcom/mesalabs/ten/update/activity/aboutpage/OpenSourceLicenseActivity;
.super Lcom/mesalabs/cerberus/base/BaseToolbarActivity;
.source "OpenSourceLicenseActivity.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field public mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/mesalabs/cerberus/base/BaseToolbarActivity;-><init>()V

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mesalabs/ten/update/activity/aboutpage/OpenSourceLicenseActivity;->TAG:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mesalabs/ten/update/activity/aboutpage/OpenSourceLicenseActivity;->mWebView:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 35
    invoke-super {p0, p1}, Lcom/mesalabs/cerberus/base/BaseToolbarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mesalabs/ten/update/activity/aboutpage/OpenSourceLicenseActivity;->mWebView:Landroid/webkit/WebView;

    .line 38
    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/activity/aboutpage/OpenSourceLicenseActivity;->setContentView(Landroid/view/View;)V

    .line 40
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/aboutpage/OpenSourceLicenseActivity;->toolBar:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    const v1, 0x7f0f009d

    invoke-virtual {p0, v1}, Lcom/mesalabs/ten/update/activity/aboutpage/OpenSourceLicenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->setTitleText(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/aboutpage/OpenSourceLicenseActivity;->toolBar:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    new-instance v1, Lcom/mesalabs/ten/update/activity/aboutpage/OpenSourceLicenseActivity$1;

    invoke-direct {v1, p0}, Lcom/mesalabs/ten/update/activity/aboutpage/OpenSourceLicenseActivity$1;-><init>(Lcom/mesalabs/ten/update/activity/aboutpage/OpenSourceLicenseActivity;)V

    invoke-virtual {v0, v1}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->setHomeAsUpButton(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/activity/aboutpage/OpenSourceLicenseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 49
    const-string v0, "text/NOTICE.html"

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/activity/aboutpage/OpenSourceLicenseActivity;->readAssetFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "htmlContent":Ljava/lang/String;
    iget-object v1, p0, Lcom/mesalabs/ten/update/activity/aboutpage/OpenSourceLicenseActivity;->mWebView:Landroid/webkit/WebView;

    const v2, -0xdadadb

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .local v1, "data":Ljava/lang/StringBuilder;
    const-string v2, "<html><head><style type=\"text/css\">body{color: #ffffff; background-color: #252525;}</style></head><body>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v2, "</body></html>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v3, p0, Lcom/mesalabs/ten/update/activity/aboutpage/OpenSourceLicenseActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const-string v6, "text/html"

    const-string v7, "utf-8"

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .end local v0    # "htmlContent":Ljava/lang/String;
    .end local v1    # "data":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/aboutpage/OpenSourceLicenseActivity;->mWebView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/text/NOTICE.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/aboutpage/OpenSourceLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 61
    .local v0, "wvSettings":Landroid/webkit/WebSettings;
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 62
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 63
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 64
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 65
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 66
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 67
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/aboutpage/OpenSourceLicenseActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mesalabs/ten/update/activity/aboutpage/OpenSourceLicenseActivity;->mWebView:Landroid/webkit/WebView;

    .line 75
    :cond_0
    invoke-super {p0}, Lcom/mesalabs/cerberus/base/BaseToolbarActivity;->onDestroy()V

    .line 76
    return-void
.end method

.method public final readAssetFileAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "file"    # Ljava/lang/String;

    .line 80
    :try_start_0
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/activity/aboutpage/OpenSourceLicenseActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 81
    .local v0, "is":Ljava/io/InputStream;
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 82
    .local v1, "content":[B
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 83
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 84
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 85
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v1    # "content":[B
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/mesalabs/ten/update/activity/aboutpage/OpenSourceLicenseActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v1, ""

    return-object v1
.end method
