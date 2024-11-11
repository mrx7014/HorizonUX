.class public final synthetic Lcom/mesalabs/ten/update/ota/ROMUpdate$Download$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tonyodev/fetch2core/Func;


# static fields
.field public static final synthetic INSTANCE:Lcom/mesalabs/ten/update/ota/ROMUpdate$Download$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download$$ExternalSyntheticLambda1;->INSTANCE:Lcom/mesalabs/ten/update/ota/ROMUpdate$Download$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/tonyodev/fetch2/Error;

    invoke-static {p1}, Lcom/mesalabs/ten/update/ota/ROMUpdate$Download;->lambda$startDownload$1(Lcom/tonyodev/fetch2/Error;)V

    return-void
.end method
