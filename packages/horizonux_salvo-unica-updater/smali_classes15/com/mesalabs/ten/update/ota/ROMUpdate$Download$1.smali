.class Lcom/mesalabs/ten/update/ota/ROMUpdate$Download$1;
.super Lcom/mesalabs/ten/update/ota/noti/FetchOTANotificationManager;
.source "ROMUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->startDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;


# direct methods
.method constructor <init>(Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;
    .param p2, "arg0"    # Landroid/content/Context;

    .line 206
    iput-object p1, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download$1;->this$0:Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;

    invoke-direct {p0, p2}, Lcom/mesalabs/ten/update/ota/noti/FetchOTANotificationManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getFetchInstanceForNamespace(Ljava/lang/String;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download$1;->this$0:Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;

    invoke-static {v0}, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->access$200(Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object v0

    return-object v0
.end method
