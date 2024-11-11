.class public Lcom/mesalabs/cerberus/root/SU;
.super Ljava/lang/Object;
.source "SU.java"


# instance fields
.field public closed:Z

.field public denied:Z

.field private firstTry:Z

.field private mProcess:Ljava/lang/Process;

.field private mReader:Ljava/io/BufferedReader;

.field private final mRoot:Z

.field private final mTag:Ljava/lang/String;

.field private mWriter:Ljava/io/BufferedWriter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mesalabs/cerberus/root/SU;-><init>(ZLjava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 5
    .param p1, "root"    # Z
    .param p2, "tag"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean p1, p0, Lcom/mesalabs/cerberus/root/SU;->mRoot:Z

    .line 43
    iput-object p2, p0, Lcom/mesalabs/cerberus/root/SU;->mTag:Ljava/lang/String;

    .line 45
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 46
    :try_start_0
    const-string v1, "%s initialized"

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const-string v4, "SU"

    goto :goto_0

    :cond_0
    const-string v4, "SH"

    :goto_0
    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_1
    iput-boolean v0, p0, Lcom/mesalabs/cerberus/root/SU;->firstTry:Z

    .line 49
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    if-eqz p1, :cond_2

    const-string v2, "su"

    goto :goto_1

    :cond_2
    const-string v2, "sh"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    iput-object v1, p0, Lcom/mesalabs/cerberus/root/SU;->mProcess:Ljava/lang/Process;

    .line 50
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Lcom/mesalabs/cerberus/root/SU;->mProcess:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lcom/mesalabs/cerberus/root/SU;->mWriter:Ljava/io/BufferedWriter;

    .line 51
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/mesalabs/cerberus/root/SU;->mProcess:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lcom/mesalabs/cerberus/root/SU;->mReader:Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_3

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/mesalabs/cerberus/root/SU;->mTag:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 54
    if-eqz p1, :cond_3

    const-string v3, "Failed to run shell as su"

    goto :goto_2

    :cond_3
    const-string v3, "Failed to run shell as sh"

    :goto_2
    invoke-static {v2, v3}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_4
    iput-boolean v0, p0, Lcom/mesalabs/cerberus/root/SU;->denied:Z

    .line 57
    iput-boolean v0, p0, Lcom/mesalabs/cerberus/root/SU;->closed:Z

    .line 59
    .end local v1    # "e":Ljava/io/IOException;
    :goto_3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/mesalabs/cerberus/root/SU;->mWriter:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_0

    .line 101
    const-string v1, "exit\n"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/mesalabs/cerberus/root/SU;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 104
    iget-object v0, p0, Lcom/mesalabs/cerberus/root/SU;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/mesalabs/cerberus/root/SU;->mReader:Ljava/io/BufferedReader;

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_1
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 113
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v0, p0, Lcom/mesalabs/cerberus/root/SU;->mProcess:Ljava/lang/Process;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 115
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    goto :goto_1

    .line 116
    :catch_1
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 120
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    iget-object v0, p0, Lcom/mesalabs/cerberus/root/SU;->mProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 121
    iget-object v0, p0, Lcom/mesalabs/cerberus/root/SU;->mTag:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 122
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/mesalabs/cerberus/root/SU;->mRoot:Z

    if-eqz v4, :cond_2

    const-string v4, "SU"

    goto :goto_2

    :cond_2
    const-string v4, "SH"

    :goto_2
    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/mesalabs/cerberus/root/SU;->mProcess:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->exitValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "%s closed: %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mesalabs/ten/update/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_3
    iput-boolean v1, p0, Lcom/mesalabs/cerberus/root/SU;->closed:Z

    .line 126
    return-void
.end method

.method public declared-synchronized runCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "command"    # Ljava/lang/String;

    monitor-enter p0

    .line 62
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 64
    const/4 v0, 0x1

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "/shellCallback/"

    .line 66
    .local v2, "callback":Ljava/lang/String;
    iget-object v3, p0, Lcom/mesalabs/cerberus/root/SU;->mWriter:Ljava/io/BufferedWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\necho "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 67
    iget-object v3, p0, Lcom/mesalabs/cerberus/root/SU;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 70
    const/16 v3, 0x100

    new-array v3, v3, [C

    .line 72
    .local v3, "buffer":[C
    :cond_0
    iget-object v4, p0, Lcom/mesalabs/cerberus/root/SU;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v4, v3}, Ljava/io/BufferedReader;->read([C)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    move v6, v4

    .local v6, "i":I
    const/4 v7, -0x1

    if-le v4, v7, :cond_0

    .line 74
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v6

    invoke-virtual {v1, v6, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 75
    nop

    .line 78
    iput-boolean v5, p0, Lcom/mesalabs/cerberus/root/SU;->firstTry:Z

    .line 79
    iget-object v4, p0, Lcom/mesalabs/cerberus/root/SU;->mTag:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 80
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "run: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " output: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mesalabs/ten/update/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 95
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "callback":Ljava/lang/String;
    .end local v3    # "buffer":[C
    .end local v6    # "i":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    iput-boolean v0, p0, Lcom/mesalabs/cerberus/root/SU;->denied:Z

    goto :goto_1

    .line 88
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    iput-boolean v0, p0, Lcom/mesalabs/cerberus/root/SU;->denied:Z

    .line 93
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_2
    :goto_0
    goto :goto_1

    .line 84
    :catch_2
    move-exception v1

    .line 85
    .local v1, "e":Ljava/io/IOException;
    iput-boolean v0, p0, Lcom/mesalabs/cerberus/root/SU;->closed:Z

    .line 86
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 87
    iget-boolean v2, p0, Lcom/mesalabs/cerberus/root/SU;->firstTry:Z

    if-eqz v2, :cond_2

    iput-boolean v0, p0, Lcom/mesalabs/cerberus/root/SU;->denied:Z

    goto :goto_0

    .line 94
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    const/4 v0, 0x0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 95
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local p0    # "this":Lcom/mesalabs/cerberus/root/SU;
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 61
    .end local p1    # "command":Ljava/lang/String;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method
