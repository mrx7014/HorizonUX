.class public Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;
.super Landroid/os/AsyncTask;
.source "GenerateRecoveryScript.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static NEW_LINE:Ljava/lang/String;

.field private static SCRIPT_FILE:Ljava/lang/String;


# instance fields
.field public final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mProgressCircle:Landroid/app/Dialog;

.field private mScript:Ljava/lang/StringBuilder;

.field private mScriptOutput:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-string v0, "/cache/recovery/openrecoveryscript"

    sput-object v0, Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;->SCRIPT_FILE:Ljava/lang/String;

    .line 35
    const-string v0, "\n"

    sput-object v0, Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;->NEW_LINE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 29
    const-string v0, "GenerateRecoveryScript"

    iput-object v0, p0, Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;->TAG:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;->mScript:Ljava/lang/StringBuilder;

    .line 39
    iput-object p1, p0, Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .line 71
    const-string v0, "mkdir -p /cache/recovery/; echo $?"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/ota/utils/SystemUtils;->shell(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "check":Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "\n"

    const-string v5, "\" > "

    const-string v6, "echo \""

    const/4 v7, 0x1

    if-nez v3, :cond_0

    .line 76
    invoke-static {v0, v7}, Lcom/mesalabs/ten/update/ota/utils/SystemUtils;->shell(Ljava/lang/String;Z)Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;->mScriptOutput:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;->SCRIPT_FILE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/mesalabs/ten/update/ota/utils/SystemUtils;->shell(Ljava/lang/String;Z)Ljava/lang/String;

    goto :goto_0

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;->mScriptOutput:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;->SCRIPT_FILE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/mesalabs/ten/update/ota/utils/SystemUtils;->shell(Ljava/lang/String;Z)Ljava/lang/String;

    .line 83
    :goto_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Boolean;

    .line 88
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils;->setRebootForInstall(Z)V

    .line 89
    iget-object v0, p0, Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mesalabs/ten/update/ota/utils/SystemUtils;->rebootToRecovery(Landroid/content/Context;)V

    .line 90
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 44
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mesalabs/cerberus/utils/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f100337

    goto :goto_0

    :cond_0
    const v2, 0x7f100338

    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;->mProgressCircle:Landroid/app/Dialog;

    .line 45
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 46
    iget-object v0, p0, Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;->mProgressCircle:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 47
    iget-object v0, p0, Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;->mProgressCircle:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 48
    iget-object v0, p0, Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;->mProgressCircle:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 49
    iget-object v0, p0, Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;->mProgressCircle:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0055

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 50
    iget-object v0, p0, Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;->mProgressCircle:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 52
    iget-object v0, p0, Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;->mScript:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wipe cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-object v0, p0, Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;->mScript:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wipe dalvik"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v0, p0, Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;->mScript:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "install "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;->mContext:Landroid/content/Context;

    .line 57
    invoke-static {v2}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->getFullFilePathName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v0, p0, Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;->mScript:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmd rm -rf "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;->mContext:Landroid/content/Context;

    .line 61
    invoke-static {v2}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->getFullFilePathName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v0, p0, Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;->mScript:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mesalabs/ten/update/ota/tasks/GenerateRecoveryScript;->mScriptOutput:Ljava/lang/String;

    .line 65
    return-void
.end method
