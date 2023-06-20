/*
Copyright © 2023 Prince Kumar  <EMAIL ADDRESS>

*/
package cmd

import (
	"fmt"
	"crypto/sha256"
	"github.com/spf13/cobra"
)

// sha256Cmd represents the sha256 command
var sha256Cmd = &cobra.Command{
	Use:   "sha256",
	Short: "Convert text into sha256 hash",
	Long: `This cmd can be used to convert a text and password to convert into sha256`,
	Run: func(cmd *cobra.Command, args []string) {
		sum := sha256.Sum256([]byte(args[0]))
		fmt.Printf("%x",sum)
	},
}

func init() {
	rootCmd.AddCommand(sha256Cmd)

	// Here you will define your flags and configuration settings.

	// Cobra supports Persistent Flags which will work for this command
	// and all subcommands, e.g.:
	// sha256Cmd.PersistentFlags().String("foo", "", "A help for foo")

	// Cobra supports local flags which will only run when this command
	// is called directly, e.g.:
	// sha256Cmd.Flags().BoolP("toggle", "t", false, "Help message for toggle")
}
