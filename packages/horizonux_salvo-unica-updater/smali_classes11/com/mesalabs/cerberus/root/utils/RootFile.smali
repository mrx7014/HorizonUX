.class public Lcom/mesalabs/cerberus/root/utils/RootFile;
.super Ljava/lang/Object;
.source "RootFile.java"


# instance fields
.field private final mFile:Ljava/lang/String;

.field private mSU:Lcom/mesalabs/cerberus/root/SU;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mFile:Ljava/lang/String;

    .line 31
    invoke-static {}, Lcom/mesalabs/cerberus/root/utils/RootUtils;->getSU()Lcom/mesalabs/cerberus/root/SU;

    move-result-object v0

    iput-object v0, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mSU:Lcom/mesalabs/cerberus/root/SU;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mesalabs/cerberus/root/SU;)V
    .locals 0
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "su"    # Lcom/mesalabs/cerberus/root/SU;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mFile:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mSU:Lcom/mesalabs/cerberus/root/SU;

    .line 37
    return-void
.end method


# virtual methods
.method public cp(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mSU:Lcom/mesalabs/cerberus/root/SU;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cp -r \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mesalabs/cerberus/root/SU;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    return-void
.end method

.method public delete()V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mSU:Lcom/mesalabs/cerberus/root/SU;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rm -r \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mesalabs/cerberus/root/SU;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    return-void
.end method

.method public varargs execute([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "arguments"    # [Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v0, "args":Ljava/lang/StringBuilder;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 68
    .local v3, "arg":Ljava/lang/String;
    const-string v4, " \""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .end local v3    # "arg":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mSU:Lcom/mesalabs/cerberus/root/SU;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mesalabs/cerberus/root/SU;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public exists()Z
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mSU:Lcom/mesalabs/cerberus/root/SU;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ -e "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ] && echo true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mesalabs/cerberus/root/SU;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "output":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentFile()Lcom/mesalabs/cerberus/root/utils/RootFile;
    .locals 3

    .line 110
    new-instance v0, Lcom/mesalabs/cerberus/root/utils/RootFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mFile:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mSU:Lcom/mesalabs/cerberus/root/SU;

    invoke-direct {v0, v1, v2}, Lcom/mesalabs/cerberus/root/utils/RootFile;-><init>(Ljava/lang/String;Lcom/mesalabs/cerberus/root/SU;)V

    return-object v0
.end method

.method public getRealPath()Lcom/mesalabs/cerberus/root/utils/RootFile;
    .locals 4

    .line 114
    new-instance v0, Lcom/mesalabs/cerberus/root/utils/RootFile;

    iget-object v1, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mSU:Lcom/mesalabs/cerberus/root/SU;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "realpath \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mesalabs/cerberus/root/SU;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mSU:Lcom/mesalabs/cerberus/root/SU;

    invoke-direct {v0, v1, v2}, Lcom/mesalabs/cerberus/root/utils/RootFile;-><init>(Ljava/lang/String;Lcom/mesalabs/cerberus/root/SU;)V

    return-object v0
.end method

.method public isDirectory()Z
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mSU:Lcom/mesalabs/cerberus/root/SU;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ -d "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ] && echo true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mesalabs/cerberus/root/SU;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mSU:Lcom/mesalabs/cerberus/root/SU;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "find \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' -mindepth 1 | read || echo false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mesalabs/cerberus/root/SU;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public list()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mSU:Lcom/mesalabs/cerberus/root/SU;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ls \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mesalabs/cerberus/root/SU;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "files":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 82
    const-string v2, "\\r?\\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 83
    .local v5, "file":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mFile:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mesalabs/cerberus/root/utils/RootOperations;->existFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 84
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .end local v5    # "file":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 88
    :cond_1
    return-object v0
.end method

.method public listFiles()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mesalabs/cerberus/root/utils/RootFile;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/mesalabs/cerberus/root/utils/RootFile;>;"
    iget-object v1, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mSU:Lcom/mesalabs/cerberus/root/SU;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ls \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mesalabs/cerberus/root/SU;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "files":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 96
    const-string v2, "\\r?\\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 97
    .local v5, "file":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mFile:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mesalabs/cerberus/root/utils/RootOperations;->existFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 98
    new-instance v6, Lcom/mesalabs/cerberus/root/utils/RootFile;

    iget-object v8, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mFile:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mFile:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    goto :goto_1

    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mFile:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mSU:Lcom/mesalabs/cerberus/root/SU;

    invoke-direct {v6, v7, v8}, Lcom/mesalabs/cerberus/root/utils/RootFile;-><init>(Ljava/lang/String;Lcom/mesalabs/cerberus/root/SU;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v5    # "file":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 102
    :cond_2
    return-object v0
.end method

.method public mkdir()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mSU:Lcom/mesalabs/cerberus/root/SU;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mkdir -p \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mesalabs/cerberus/root/SU;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    return-void
.end method

.method public mv(Ljava/lang/String;)Lcom/mesalabs/cerberus/root/utils/RootFile;
    .locals 3
    .param p1, "newPath"    # Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mSU:Lcom/mesalabs/cerberus/root/SU;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mv -f \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mesalabs/cerberus/root/SU;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    new-instance v0, Lcom/mesalabs/cerberus/root/utils/RootFile;

    invoke-direct {v0, p1}, Lcom/mesalabs/cerberus/root/utils/RootFile;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public readFile()Ljava/lang/String;
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mSU:Lcom/mesalabs/cerberus/root/SU;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cat \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mesalabs/cerberus/root/SU;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mFile:Ljava/lang/String;

    return-object v0
.end method

.method public write(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "append"    # Z

    .line 57
    const-string v0, "\\r?\\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "array":[Ljava/lang/String;
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/mesalabs/cerberus/root/utils/RootFile;->delete()V

    .line 59
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 60
    .local v3, "line":Ljava/lang/String;
    iget-object v4, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mSU:Lcom/mesalabs/cerberus/root/SU;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "echo \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' >> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mFile:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mesalabs/cerberus/root/SU;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .end local v3    # "line":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mFile:Ljava/lang/String;

    iget-object v2, p0, Lcom/mesalabs/cerberus/root/utils/RootFile;->mSU:Lcom/mesalabs/cerberus/root/SU;

    const-string v3, "755"

    invoke-static {v1, v3, v2}, Lcom/mesalabs/cerberus/root/utils/RootUtils;->chmod(Ljava/lang/String;Ljava/lang/String;Lcom/mesalabs/cerberus/root/SU;)V

    .line 63
    return-void
.end method
