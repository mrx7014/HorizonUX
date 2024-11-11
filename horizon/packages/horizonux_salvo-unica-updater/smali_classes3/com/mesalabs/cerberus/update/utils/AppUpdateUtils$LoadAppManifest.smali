.class Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils$LoadAppManifest;
.super Landroid/os/AsyncTask;
.source "AppUpdateUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadAppManifest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Lcom/mesalabs/cerberus/update/data/AppData;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final MANIFEST:Ljava/lang/String; = "app_manifest.xml"


# instance fields
.field public final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;


# direct methods
.method public constructor <init>(Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;
    .param p2, "context"    # Landroid/content/Context;

    .line 118
    iput-object p1, p0, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils$LoadAppManifest;->this$0:Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 113
    const-string v0, "LoadAppManifest"

    iput-object v0, p0, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils$LoadAppManifest;->TAG:Ljava/lang/String;

    .line 119
    iput-object p2, p0, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils$LoadAppManifest;->mContext:Landroid/content/Context;

    .line 120
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils$LoadAppManifest;->doInBackground([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "param"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/mesalabs/cerberus/update/data/AppData;",
            ">;"
        }
    .end annotation

    .line 135
    const-string v0, "app_manifest.xml"

    const/4 v1, 0x0

    .line 137
    .local v1, "input":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    const/4 v3, 0x0

    aget-object v4, p1, v3

    check-cast v4, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 138
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 139
    .local v4, "connection":Ljava/net/URLConnection;
    invoke-virtual {v4}, Ljava/net/URLConnection;->connect()V

    .line 141
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v5

    .line 143
    iget-object v5, p0, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils$LoadAppManifest;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    .line 145
    .local v5, "output":Ljava/io/OutputStream;
    const/16 v6, 0x400

    new-array v6, v6, [B

    .line 147
    .local v6, "data":[B
    :goto_0
    invoke-virtual {v1, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    move v8, v7

    .local v8, "count":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_0

    .line 148
    invoke-virtual {v5, v6, v3, v8}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 152
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 153
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 156
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils$LoadAppManifest;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-direct {v3, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/mesalabs/cerberus/update/tasks/AppXMLParser;->parse(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 157
    .end local v1    # "input":Ljava/io/InputStream;
    .end local v2    # "url":Ljava/net/URL;
    .end local v4    # "connection":Ljava/net/URLConnection;
    .end local v5    # "output":Ljava/io/OutputStream;
    .end local v6    # "data":[B
    .end local v8    # "count":I
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LoadAppManifest"

    invoke-static {v2, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 112
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils$LoadAppManifest;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mesalabs/cerberus/update/data/AppData;",
            ">;)V"
        }
    .end annotation

    .line 165
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mesalabs/cerberus/update/data/AppData;>;"
    iget-object v0, p0, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils$LoadAppManifest;->this$0:Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;

    invoke-static {v0, p1}, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;->access$000(Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils;Ljava/util/ArrayList;)V

    .line 166
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 125
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mesalabs/cerberus/update/utils/AppUpdateUtils$LoadAppManifest;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_manifest.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .local v0, "manifest":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 129
    :cond_0
    return-void
.end method
