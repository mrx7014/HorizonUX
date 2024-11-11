.class Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat$DummyClickListener;
.super Ljava/lang/Object;
.source "SeslSwitchPreferenceCompat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DummyClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;


# direct methods
.method private constructor <init>(Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat$DummyClickListener;->this$0:Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;
    .param p2, "x1"    # Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat$1;

    .line 122
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat$DummyClickListener;-><init>(Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 124
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat$DummyClickListener;->this$0:Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;

    invoke-virtual {v0}, Lcom/samsung/android/ui/preference/SeslSwitchPreferenceCompat;->callClickListener()V

    .line 125
    return-void
.end method
