.class Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat$1;
.super Ljava/lang/Object;
.source "ListPreferenceDialogFragmentCompat.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;->onPrepareDialogBuilder(Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;

    .line 95
    iput-object p1, p0, Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat$1;->this$0:Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 98
    iget-object v0, p0, Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat$1;->this$0:Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;

    invoke-static {v0, p2}, Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;->access$002(Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;I)I

    .line 100
    iget-object v0, p0, Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat$1;->this$0:Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/ui/preference/ListPreferenceDialogFragmentCompat;->onClick(Landroid/content/DialogInterface;I)V

    .line 101
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 102
    return-void
.end method
