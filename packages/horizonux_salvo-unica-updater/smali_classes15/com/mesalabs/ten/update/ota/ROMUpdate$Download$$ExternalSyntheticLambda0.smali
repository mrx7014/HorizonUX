.class public final synthetic Lcom/mesalabs/ten/update/ota/ROMUpdate$Download$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tonyodev/fetch2core/Func;


# instance fields
.field public final synthetic f$0:Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;


# direct methods
.method public synthetic constructor <init>(Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download$$ExternalSyntheticLambda0;->f$0:Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download$$ExternalSyntheticLambda0;->f$0:Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;

    check-cast p1, Lcom/tonyodev/fetch2/Request;

    invoke-virtual {v0, p1}, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->lambda$startDownload$0$ROMUpdate$Download(Lcom/tonyodev/fetch2/Request;)V

    return-void
.end method
