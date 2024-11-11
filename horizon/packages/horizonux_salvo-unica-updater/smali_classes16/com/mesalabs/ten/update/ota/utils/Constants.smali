.class public Lcom/mesalabs/ten/update/ota/utils/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final INTENT_MANIFEST_CHECK_BACKGROUND:Ljava/lang/String; = "com.mesalabs.ten.ota.MANIFEST_CHECK_BACKGROUND"

.field public static final INTENT_MANIFEST_LOADED:Ljava/lang/String; = "com.mesalabs.ten.ota.MANIFEST_LOADED"

.field public static final INTENT_START_UPDATE_CHECK:Ljava/lang/String; = "com.mesalabs.ten.ota.START_UPDATE_CHECK"

.field public static final NOTIFICATION_ID:I = 0x65

.field public static final OTA_MANIFEST_URL:Ljava/lang/String; = "https://raw.githubusercontent.com/forsaken-heart24/HorizonUX/refs/heads/main/OTA/a30_ui3.xml"

.field public static final PROP_ROM_BUILD:Ljava/lang/String; = "ro.horizonux.build"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method