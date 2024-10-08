.class Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$LoadChangelogTask;
.super Landroid/os/AsyncTask;
.source "ChangelogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadChangelogTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field content:Ljava/lang/String;

.field date:Ljava/lang/String;

.field final synthetic this$0:Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

.field title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$LoadChangelogTask;->this$0:Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 175
    const-string p1, ""

    iput-object p1, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$LoadChangelogTask;->content:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;
    .param p2, "x1"    # Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$1;

    .line 172
    invoke-direct {p0, p1}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$LoadChangelogTask;-><init>(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)V

    return-void
.end method

.method private getDominantColor(Landroid/graphics/Bitmap;)I
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 231
    const/4 v0, 0x1

    invoke-static {p1, v0, v0, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 232
    .local v0, "newBitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    .line 233
    .local v1, "color":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 234
    return v1
.end method

.method private isColorDark(I)Z
    .locals 4
    .param p1, "color"    # I

    .line 238
    invoke-static {p1}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "urls"    # [Ljava/lang/String;

    .line 179
    const-string v0, "Exception"

    const/4 v1, 0x0

    aget-object v1, p1, v1

    .line 180
    .local v1, "headerBgUrl":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, p1, v2

    .line 181
    .local v2, "changelogUrl":Ljava/lang/String;
    const/4 v3, 0x0

    .line 185
    .local v3, "mBg":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    .line 186
    .local v4, "in":Ljava/io/InputStream;
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v3, v5

    .line 187
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v4    # "in":Ljava/io/InputStream;
    goto :goto_0

    .line 188
    :catch_0
    move-exception v4

    .line 189
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->getRomName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " v"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->getVersionName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$LoadChangelogTask;->title:Ljava/lang/String;

    .line 193
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->getBuildNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$LoadChangelogTask;->date:Ljava/lang/String;

    .line 195
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "d/MM/yyyy"

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/icu/text/SimpleDateFormat;

    const-string v6, "yyyyMMdd"

    invoke-direct {v5, v6}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$LoadChangelogTask;->date:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/icu/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$LoadChangelogTask;->date:Ljava/lang/String;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 196
    :catch_1
    move-exception v4

    :goto_1
    nop

    .line 199
    :try_start_2
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 200
    .local v4, "in":Ljava/io/InputStream;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 201
    .local v5, "br":Ljava/io/BufferedReader;
    :goto_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .local v7, "line":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 202
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$LoadChangelogTask;->content:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$LoadChangelogTask;->content:Ljava/lang/String;

    goto :goto_2

    .line 204
    :cond_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 207
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 205
    .end local v7    # "line":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 206
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 172
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$LoadChangelogTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .line 214
    if-eqz p1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$LoadChangelogTask;->this$0:Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    invoke-static {v0}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->access$600(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 216
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$LoadChangelogTask;->this$0:Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    invoke-direct {p0, p1}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$LoadChangelogTask;->getDominantColor(Landroid/graphics/Bitmap;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$LoadChangelogTask;->isColorDark(I)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->access$202(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;Z)Z

    goto :goto_0

    .line 218
    :cond_0
    const-string v0, "DownloadHeaderImageTask"

    const-string v1, "result is null!!!"

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :goto_0
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$LoadChangelogTask;->this$0:Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    invoke-static {v0}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->access$1000(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)Lcom/mesalabs/cerberus/ui/widget/RoundNestedScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$LoadChangelogTask;->this$0:Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    invoke-static {v1}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->access$900(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$LoadChangelogTask;->this$0:Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    invoke-static {v2}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->access$800(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mesalabs/cerberus/utils/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0600e4

    goto :goto_1

    :cond_1
    const v2, 0x7f0600e5

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mesalabs/cerberus/ui/widget/RoundNestedScrollView;->setBackgroundColor(I)V

    .line 222
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$LoadChangelogTask;->this$0:Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    invoke-static {v0}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->access$700(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$LoadChangelogTask;->this$0:Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    invoke-static {v0}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->access$1100(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$LoadChangelogTask;->this$0:Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    invoke-static {v0}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->access$1200(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$LoadChangelogTask;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$LoadChangelogTask;->this$0:Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    invoke-static {v0}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->access$1300(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$LoadChangelogTask;->date:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$LoadChangelogTask;->this$0:Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    invoke-static {v0}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->access$1400(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$LoadChangelogTask;->this$0:Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;

    invoke-static {v0}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;->access$1500(Lcom/mesalabs/ten/update/activity/home/ChangelogActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$LoadChangelogTask;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 172
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/mesalabs/ten/update/activity/home/ChangelogActivity$LoadChangelogTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
