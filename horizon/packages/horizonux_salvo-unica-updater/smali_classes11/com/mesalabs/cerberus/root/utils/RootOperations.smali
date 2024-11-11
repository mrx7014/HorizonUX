.class public Lcom/mesalabs/cerberus/root/utils/RootOperations;
.super Ljava/lang/Object;
.source "RootOperations.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-string v0, "RootOperations"

    sput-object v0, Lcom/mesalabs/cerberus/root/utils/RootOperations;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static existFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "file"    # Ljava/lang/String;

    .line 33
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/mesalabs/cerberus/root/utils/RootOperations;->existFile(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static existFile(Ljava/lang/String;Lcom/mesalabs/cerberus/root/SU;)Z
    .locals 1
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "su"    # Lcom/mesalabs/cerberus/root/SU;

    .line 41
    if-nez p1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/mesalabs/cerberus/root/utils/RootFile;

    invoke-direct {v0, p0, p1}, Lcom/mesalabs/cerberus/root/utils/RootFile;-><init>(Ljava/lang/String;Lcom/mesalabs/cerberus/root/SU;)V

    invoke-virtual {v0}, Lcom/mesalabs/cerberus/root/utils/RootFile;->exists()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public static existFile(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "root"    # Z

    .line 37
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/mesalabs/cerberus/root/utils/RootUtils;->getSU()Lcom/mesalabs/cerberus/root/SU;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lcom/mesalabs/cerberus/root/utils/RootOperations;->existFile(Ljava/lang/String;Lcom/mesalabs/cerberus/root/SU;)Z

    move-result v0

    return v0
.end method

.method public static readAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "input":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 48
    .local v1, "buf":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .local v2, "s":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    move-object v0, v3

    .line 50
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v3

    .line 53
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "str":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 54
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 63
    :catch_0
    move-exception v5

    goto :goto_2

    .line 62
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 65
    goto :goto_3

    .line 64
    .local v5, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 56
    .end local v5    # "e":Ljava/io/IOException;
    :goto_3
    return-object v3

    .line 60
    .end local v2    # "s":Ljava/lang/StringBuilder;
    .end local v4    # "str":Ljava/lang/String;
    :catchall_0
    move-exception v2

    goto :goto_8

    .line 57
    :catch_1
    move-exception v2

    .line 58
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v3, Lcom/mesalabs/cerberus/root/utils/RootOperations;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_4

    .line 63
    :catch_2
    move-exception v2

    goto :goto_5

    .line 62
    :cond_2
    :goto_4
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    .line 64
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 66
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 65
    :cond_3
    :goto_6
    nop

    .line 67
    :goto_7
    const/4 v2, 0x0

    return-object v2

    .line 61
    :goto_8
    if-eqz v0, :cond_4

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_9

    .line 63
    :catch_3
    move-exception v3

    goto :goto_a

    .line 62
    :cond_4
    :goto_9
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_b

    .line 64
    .local v3, "e":Ljava/io/IOException;
    :goto_a
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 65
    .end local v3    # "e":Ljava/io/IOException;
    :cond_5
    :goto_b
    nop

    .line 66
    :goto_c
    throw v2
.end method
