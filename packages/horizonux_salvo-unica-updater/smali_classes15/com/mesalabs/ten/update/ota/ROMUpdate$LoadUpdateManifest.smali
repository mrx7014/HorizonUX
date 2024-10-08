.class Lcom/mesalabs/ten/update/ota/ROMUpdate$LoadUpdateManifest;
.super Landroid/os/AsyncTask;
.source "ROMUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mesalabs/ten/update/ota/ROMUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadUpdateManifest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final MANIFEST:Ljava/lang/String; = "update_manifest.xml"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/mesalabs/ten/update/ota/ROMUpdate;


# direct methods
.method public constructor <init>(Lcom/mesalabs/ten/update/ota/ROMUpdate;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mesalabs/ten/update/ota/ROMUpdate;
    .param p2, "context"    # Landroid/content/Context;

    .line 121
    iput-object p1, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$LoadUpdateManifest;->this$0:Lcom/mesalabs/ten/update/ota/ROMUpdate;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 115
    const-string v0, "LoadUpdateManifest"

    iput-object v0, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$LoadUpdateManifest;->TAG:Ljava/lang/String;

    .line 122
    iput-object p2, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$LoadUpdateManifest;->mContext:Landroid/content/Context;

    .line 123
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 114
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mesalabs/ten/update/ota/ROMUpdate$LoadUpdateManifest;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .param p1, "v"    # [Ljava/lang/Void;

    .line 140
    const-string v0, "update_manifest.xml"

    const/4 v1, 0x0

    .line 142
    .local v1, "input":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    const-string v3, "https://raw.githubusercontent.com/pachdomenic/TukiRom-OTA/manifest/m21/manifest.xml"

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 143
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 144
    .local v3, "connection":Ljava/net/URLConnection;
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 146
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v4

    .line 147
    iget-object v4, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$LoadUpdateManifest;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 149
    .local v4, "output":Ljava/io/OutputStream;
    const/16 v6, 0x400

    new-array v6, v6, [B

    .line 151
    .local v6, "data":[B
    :goto_0
    invoke-virtual {v1, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    move v8, v7

    .local v8, "count":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_0

    .line 152
    invoke-virtual {v4, v6, v5, v8}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 156
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 157
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 159
    new-instance v5, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;

    invoke-direct {v5}, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;-><init>()V

    .line 160
    .local v5, "parser":Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;
    new-instance v7, Ljava/io/File;

    iget-object v9, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$LoadUpdateManifest;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-direct {v7, v9, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->parse(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v1    # "input":Ljava/io/InputStream;
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "connection":Ljava/net/URLConnection;
    .end local v4    # "output":Ljava/io/OutputStream;
    .end local v5    # "parser":Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;
    .end local v6    # "data":[B
    .end local v8    # "count":I
    goto :goto_1

    .line 161
    :catch_0
    move-exception v0

    .line 162
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

    const-string v2, "LoadUpdateManifest"

    invoke-static {v2, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 114
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mesalabs/ten/update/ota/ROMUpdate$LoadUpdateManifest;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .line 170
    iget-object v0, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$LoadUpdateManifest;->this$0:Lcom/mesalabs/ten/update/ota/ROMUpdate;

    invoke-static {v0}, Lcom/mesalabs/ten/update/ota/ROMUpdate;->access$000(Lcom/mesalabs/ten/update/ota/ROMUpdate;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mesalabs.ten.ota.MANIFEST_CHECK_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    goto :goto_0

    .line 173
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mesalabs.ten.ota.MANIFEST_LOADED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_0
    iget-object v1, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$LoadUpdateManifest;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 178
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 180
    iget-object v1, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$LoadUpdateManifest;->this$0:Lcom/mesalabs/ten/update/ota/ROMUpdate;

    invoke-static {v1}, Lcom/mesalabs/ten/update/ota/ROMUpdate;->access$100(Lcom/mesalabs/ten/update/ota/ROMUpdate;)V

    .line 181
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$LoadUpdateManifest;->this$0:Lcom/mesalabs/ten/update/ota/ROMUpdate;

    invoke-static {v0}, Lcom/mesalabs/ten/update/ota/ROMUpdate;->access$000(Lcom/mesalabs/ten/update/ota/ROMUpdate;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$LoadUpdateManifest;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mesalabs/ten/update/ota/utils/GeneralUtils;->dismissNotifications(Landroid/content/Context;)V

    .line 131
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$LoadUpdateManifest;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "update_manifest.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .local v0, "manifest":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 135
    :cond_1
    return-void
.end method
