.class public Lcom/mesalabs/cerberus/root/utils/RootUtils;
.super Ljava/lang/Object;
.source "RootUtils.java"


# static fields
.field private static su:Lcom/mesalabs/cerberus/root/SU;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static busyboxInstalled()Z
    .locals 1

    .line 31
    const-string v0, "busybox"

    invoke-static {v0}, Lcom/mesalabs/cerberus/root/utils/RootUtils;->existBinary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "toybox"

    invoke-static {v0}, Lcom/mesalabs/cerberus/root/utils/RootUtils;->existBinary(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static chmod(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "permission"    # Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/mesalabs/cerberus/root/utils/RootUtils;->getSU()Lcom/mesalabs/cerberus/root/SU;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/mesalabs/cerberus/root/utils/RootUtils;->chmod(Ljava/lang/String;Ljava/lang/String;Lcom/mesalabs/cerberus/root/SU;)V

    .line 52
    return-void
.end method

.method public static chmod(Ljava/lang/String;Ljava/lang/String;Lcom/mesalabs/cerberus/root/SU;)V
    .locals 2
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "su"    # Lcom/mesalabs/cerberus/root/SU;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chmod "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mesalabs/cerberus/root/SU;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    return-void
.end method

.method public static closeSU()V
    .locals 1

    .line 76
    sget-object v0, Lcom/mesalabs/cerberus/root/utils/RootUtils;->su:Lcom/mesalabs/cerberus/root/SU;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Lcom/mesalabs/cerberus/root/SU;->close()V

    .line 79
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/mesalabs/cerberus/root/utils/RootUtils;->su:Lcom/mesalabs/cerberus/root/SU;

    .line 80
    return-void
.end method

.method private static existBinary(Ljava/lang/String;)Z
    .locals 8
    .param p0, "binary"    # Ljava/lang/String;

    .line 36
    const-string v0, "PATH"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 37
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "paths":Ljava/lang/String;
    goto :goto_0

    .line 39
    .end local v0    # "paths":Ljava/lang/String;
    :cond_0
    const-string v0, "/sbin:/vendor/bin:/system/sbin:/system/bin:/system/xbin"

    .line 41
    .restart local v0    # "paths":Ljava/lang/String;
    :goto_0
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    .line 42
    .local v5, "path":Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 43
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/mesalabs/cerberus/root/utils/RootOperations;->existFile(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mesalabs/cerberus/root/utils/RootOperations;->existFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    .line 41
    .end local v5    # "path":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 44
    .restart local v5    # "path":Ljava/lang/String;
    :cond_3
    :goto_2
    const/4 v1, 0x1

    return v1

    .line 47
    .end local v5    # "path":Ljava/lang/String;
    :cond_4
    return v3
.end method

.method public static getSU()Lcom/mesalabs/cerberus/root/SU;
    .locals 1

    .line 87
    sget-object v0, Lcom/mesalabs/cerberus/root/utils/RootUtils;->su:Lcom/mesalabs/cerberus/root/SU;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/mesalabs/cerberus/root/SU;->closed:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/mesalabs/cerberus/root/utils/RootUtils;->su:Lcom/mesalabs/cerberus/root/SU;

    iget-boolean v0, v0, Lcom/mesalabs/cerberus/root/SU;->denied:Z

    if-eqz v0, :cond_2

    .line 88
    :cond_0
    sget-object v0, Lcom/mesalabs/cerberus/root/utils/RootUtils;->su:Lcom/mesalabs/cerberus/root/SU;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/mesalabs/cerberus/root/SU;->closed:Z

    if-nez v0, :cond_1

    .line 89
    sget-object v0, Lcom/mesalabs/cerberus/root/utils/RootUtils;->su:Lcom/mesalabs/cerberus/root/SU;

    invoke-virtual {v0}, Lcom/mesalabs/cerberus/root/SU;->close()V

    .line 91
    :cond_1
    new-instance v0, Lcom/mesalabs/cerberus/root/SU;

    invoke-direct {v0}, Lcom/mesalabs/cerberus/root/SU;-><init>()V

    sput-object v0, Lcom/mesalabs/cerberus/root/utils/RootUtils;->su:Lcom/mesalabs/cerberus/root/SU;

    .line 93
    :cond_2
    sget-object v0, Lcom/mesalabs/cerberus/root/utils/RootUtils;->su:Lcom/mesalabs/cerberus/root/SU;

    return-object v0
.end method

.method public static mount(ZLjava/lang/String;)V
    .locals 1
    .param p0, "writeable"    # Z
    .param p1, "mountpoint"    # Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/mesalabs/cerberus/root/utils/RootUtils;->getSU()Lcom/mesalabs/cerberus/root/SU;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/mesalabs/cerberus/root/utils/RootUtils;->mount(ZLjava/lang/String;Lcom/mesalabs/cerberus/root/SU;)V

    .line 60
    return-void
.end method

.method public static mount(ZLjava/lang/String;Lcom/mesalabs/cerberus/root/SU;)V
    .locals 7
    .param p0, "writeable"    # Z
    .param p1, "mountpoint"    # Ljava/lang/String;
    .param p2, "su"    # Lcom/mesalabs/cerberus/root/SU;

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "rw"

    const-string v2, "ro"

    if-eqz p0, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    const/4 v4, 0x0

    aput-object v3, v0, v4

    const/4 v3, 0x1

    aput-object p1, v0, v3

    const/4 v5, 0x2

    aput-object p1, v0, v5

    const-string v6, "mount -o remount,%s %s %s"

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mesalabs/cerberus/root/SU;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    new-array v0, v5, [Ljava/lang/Object;

    if-eqz p0, :cond_1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, v2

    :goto_1
    aput-object v6, v0, v4

    aput-object p1, v0, v3

    const-string v6, "mount -o remount,%s %s"

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mesalabs/cerberus/root/SU;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    new-array v0, v5, [Ljava/lang/Object;

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    aput-object v1, v0, v4

    aput-object p1, v0, v3

    const-string v1, "mount -o %s,remount %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mesalabs/cerberus/root/SU;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    return-void
.end method

.method public static rootAccess()Z
    .locals 2

    .line 25
    invoke-static {}, Lcom/mesalabs/cerberus/root/utils/RootUtils;->getSU()Lcom/mesalabs/cerberus/root/SU;

    move-result-object v0

    .line 26
    .local v0, "su":Lcom/mesalabs/cerberus/root/SU;
    const-string v1, "echo /testRoot/"

    invoke-virtual {v0, v1}, Lcom/mesalabs/cerberus/root/SU;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    iget-boolean v1, v0, Lcom/mesalabs/cerberus/root/SU;->denied:Z

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public static runCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "command"    # Ljava/lang/String;

    .line 83
    invoke-static {}, Lcom/mesalabs/cerberus/root/utils/RootUtils;->getSU()Lcom/mesalabs/cerberus/root/SU;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mesalabs/cerberus/root/SU;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs runScript(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "arguments"    # [Ljava/lang/String;

    .line 69
    new-instance v0, Lcom/mesalabs/cerberus/root/utils/RootFile;

    const-string v1, "/data/local/tmp/grxsettingstmp.sh"

    invoke-direct {v0, v1}, Lcom/mesalabs/cerberus/root/utils/RootFile;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, "script":Lcom/mesalabs/cerberus/root/utils/RootFile;
    invoke-virtual {v0}, Lcom/mesalabs/cerberus/root/utils/RootFile;->mkdir()V

    .line 71
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/mesalabs/cerberus/root/utils/RootFile;->write(Ljava/lang/String;Z)V

    .line 72
    invoke-virtual {v0, p1}, Lcom/mesalabs/cerberus/root/utils/RootFile;->execute([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
